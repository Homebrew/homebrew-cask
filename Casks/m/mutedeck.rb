cask "mutedeck" do
  version "2.3"
  sha256 :no_check

  url "https://releases.mutedeck.com/macos-arm/mutedeck-mac-arm.dmg"
  name "Mutedeck"
  desc "Say goodbye to meeting stress and mistakes"
  homepage "https://mutedeck.com/"

  installer manual: "MuteDeck-#{version}-Installer"

  uninstall quit:      "com.mutedeck.mac",
            launchctl: "application.com.mutedeck.mac",
            delete:    "/Applications/MuteDeck/"

  zap trash: "~/Library/Application Support/mutedeck/"
end
