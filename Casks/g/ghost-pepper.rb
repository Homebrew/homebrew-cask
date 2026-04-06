cask "ghost-pepper" do
  version "2.0.1"
  sha256 "a7a902ad97d71088e90c9966b7b2e682e4315182381d07dfdbc27acb02f8dfea"

  url "https://github.com/matthartman/ghost-pepper/releases/download/v#{version}/GhostPepper.dmg"
  name "Ghost Pepper"
  desc "Hold-to-talk speech-to-text for macOS, 100% local with WhisperKit"
  homepage "https://github.com/matthartman/ghost-pepper"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "GhostPepper.app"

  zap trash: [
    "~/Library/Preferences/com.github.matthartman.ghostpepper.plist",
  ]
end
