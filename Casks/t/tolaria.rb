cask "tolaria" do
  version "2026.4.25"
  sha256 "3ae52b2d920b8595259fee3d8cc6ef44a2d022677364536f9d46e6be77e6c7cf"

  url "https://github.com/refactoringhq/tolaria/releases/download/stable-v#{version}/Tolaria_#{version}_aarch64.dmg",
      verified: "github.com/refactoringhq/tolaria/"
  name "Tolaria"
  desc "Markdown knowledgebase manager"
  homepage "https://tolaria.md/"

  livecheck do
    url :url
    regex(/stable-v?(\d+(?:\.\d+)+)/i)
    strategy :github_latest
  end

  depends_on arch: :arm64

  app "Tolaria.app"

  zap trash: [
    "~/Library/Application Support/com.tolaria.app",
    "~/Library/Caches/club.refactoring.tolaria",
    "~/Library/Preferences/club.refactoring.tolaria.plist",
    "~/Library/WebKit/club.refactoring.tolaria",
  ]
end
