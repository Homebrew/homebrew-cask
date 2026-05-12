cask "tolaria" do
  arch arm: "Silicon", intel: "Intel"

  version "2026.5.2"
  sha256 arm:   "f592666d63b3734f99fea7db170a883e7d90b3a6b7edf77e55143606677e5e33",
         intel: "02935b29aaf562437d58deaacf7b824e13eadccd15759947fa82141b0f6435f6"

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
