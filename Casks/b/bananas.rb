cask "bananas" do
  version :latest
  sha256 :no_check

  url "https://github.com/mistweaverco/bananas/releases/latest/download/bananas_universal.dmg",
      verified: "github.com/mistweaverco/"
  name "Bananas"
  desc "Cross-platform, p2p screen sharing application"
  homepage "https://getbananas.net/"

  app "Bananas.app"
  
  postflight do
    system_command "/usr/bin/xattr",
                  args: ["-d", "com.apple.quarantine", "#{appdir}/Bananas.app"],
                  sudo: false
  end

  zap trash: [
    "~/Library/Application Support/Bananas",
    "~/Library/Preferences/net.getbananas.app.plist",
    "~/Library/Saved Application State/net.getbananas.app.savedState",
  ]
end
