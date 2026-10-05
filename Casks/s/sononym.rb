cask "sononym" do
  version "1.6.15"
  sha256 arm:   "d84afbeee6e04d9820e927b3fb59568edaf4419158683402e80e725e064ebe82",
         intel: "fad4a269bd54edfdb656d356c3fed689857dbda9ce75b4135cc3d456a8f7bf7c"

  on_arm do
    url "https://www.sononym.net/download/Sononym-#{version}-arm64.dmg"
  end
  on_intel do
    url "https://www.sononym.net/download/Sononym-#{version}.dmg"
  end

  name "Sononym"
  desc "Sononym is a sample browser that offers a fresh perspective on how sounds can be explored and organized."
  homepage "https://www.sononym.net/"

  livecheck do
    url :homepage
    regex(/Current version:\s*(\d+(?:\.\d+)+)/i)
  end

  depends_on :macos

  app "Sononym.app"

  zap trash: [
    "~/Library/Application Support/Sononym",
    "~/Library/Preferences/com.sononym.sononym.plist",
    "~/Library/Saved Application State/com.sononym.sononym.savedState",
  ]
end
