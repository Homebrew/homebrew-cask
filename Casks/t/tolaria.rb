cask "tolaria" do
  arch arm: "Silicon", intel: "Intel"

  version "2026.5.13"
  sha256 arm:   "f6f1dc2242be6638d7e44ff07660208ea6466432f65e87adef18efb34b6957a6",
         intel: "e783eab4a2c79f9a80e5a2cd87abf6f257c5406adaf51a207d14384e89b230d8"

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
