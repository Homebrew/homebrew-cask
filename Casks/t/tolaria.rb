cask "tolaria" do
  version "2026.4.24"
  sha256 "dbef3022cd1c24271b733e23c660602a2046fd3a5c9c78453a6f9b697540379d"

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
