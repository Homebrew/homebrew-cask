cask "mutedeck" do
  arch arm: "-arm"

  sha256 :no_check

  on_arm do
    version "4.11.1"
  end
  on_intel do
    version "4.11.1"
  end

  url "https://releases.mutedeck.com/macos#{arch}/mutedeck-mac#{arch}.dmg"
  name "Mutedeck"
  desc "Toggle mute, video, record, share, and leave a meeting in a call app"
  homepage "https://mutedeck.com/"

  livecheck do
    url "https://releases.r2.mutedeck.com/updates/macos#{arch}/Updates.xml"
    strategy :xml do |xml|
      xml.elements["/Updates/PackageUpdate[Name='com.mutedeck.client']/Version"]&.text&.strip
    end
  end

  auto_updates true
  depends_on :macos

  installer script: {
    executable: "MuteDeck-#{version}-Installer.app/Contents/MacOS/MuteDeck-#{version}-Installer",
    args:       [
      "--root", "/Applications/MuteDeck",
      "--accept-messages", "--accept-licenses", "--confirm-command",
      "--cache-path", "#{staged_path}/cache",
      "install"
    ],
  }

  uninstall launchctl: "application.com.mutedeck.mac",
            quit:      "com.mutedeck.mac",
            script:    {
              executable: "/Applications/MuteDeck/MuteDeckMaintenanceTool.app/Contents/MacOS/MuteDeckMaintenanceTool",
              args:       ["--confirm-command", "remove", "com.mutedeck.client", "com.mutedeck.maintenancetool"],
            },
            delete:    "/Applications/MuteDeck"

  zap trash: "~/Library/Application Support/mutedeck"
end
