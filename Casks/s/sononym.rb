cask "sononym" do
  arch arm: "-arm64"

  version "1.6.15"
  sha256 arm:   "d84afbeee6e04d9820e927b3fb59568edaf4419158683402e80e725e064ebe82",
         intel: "fad4a269bd54edfdb656d356c3fed689857dbda9ce75b4135cc3d456a8f7bf7c"

  url "https://www.sononym.net/download/Sononym-#{version}#{arch}.dmg"
  name "Sononym"
  desc "AI-powered sample browser for exploring audio samples"
  homepage "https://www.sononym.net/"

  livecheck do
    url :homepage
    regex(/href=.*?Sononym[._-]v?(\d+(?:\.\d+)+)#{arch}\.dmg/)
  end

  depends_on :macos

  app "Sononym.app"

  zap trash: [
    "~/Library/Application Support/Sononym",
    "~/Library/Preferences/com.sononym.sononym.plist",
    "~/Library/Saved Application State/com.sononym.sononym.savedState",
  ]
end
