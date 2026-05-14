cask "tolaria" do
  arch arm: "Silicon", intel: "Intel"

  version "2026.5.14"
  sha256 arm:   "73b333128cd6faa7cde5da587919862edc576fdb78305a7dd13463338249ecc5",
         intel: "0a97dfaf811898de8995aa97d0230d8ed744584d2d274debf2a782bbe3839e04"

  url "https://github.com/refactoringhq/tolaria/releases/download/stable-v#{version}/Tolaria_#{version}_macOS_#{arch}.dmg",
      verified: "github.com/refactoringhq/tolaria/"
  name "Tolaria"
  desc "Markdown knowledgebase manager"
  homepage "https://tolaria.md/"

  livecheck do
    url :url
    regex(/^stable[._-]v?(\d+(?:\.\d+)+)$/i)
    strategy :github_latest
  end

  depends_on :macos

  app "Tolaria.app"

  zap trash: [
    "~/Library/Application Support/com.tolaria.app",
    "~/Library/Caches/club.refactoring.tolaria",
    "~/Library/Preferences/club.refactoring.tolaria.plist",
    "~/Library/WebKit/club.refactoring.tolaria",
  ]
end
