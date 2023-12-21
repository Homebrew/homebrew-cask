cask "mutedeck" do
  arch arm: "-arm"

  version "2.5"
  sha256 :no_check

  url "https://releases.mutedeck.com/macos#{arch}/mutedeck-mac#{arch}.dmg"
  name "Mutedeck"
  desc "Toggle mute, video, record, share, and leave a meeting in a call app"
  homepage "https://mutedeck.com/"

  livecheck do
    url "https://mutedeck.canny.io/changelog"
    regex(/Most\srecent\supdate:\sv(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :big_sur"

  installer manual: "MuteDeck-#{version}-Installer"

  uninstall launchctl: "application.com.mutedeck.mac",
            quit:      "com.mutedeck.mac",
            delete:    "/Applications/MuteDeck"

  zap trash: "~/Library/Application Support/mutedeck"
end
