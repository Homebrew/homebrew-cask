cask "mutedeck" do
  arch arm: "-arm"

  version "2.7"
  sha256 :no_check

  url "https://releases.mutedeck.com/macos#{arch}/mutedeck-mac#{arch}.dmg"
  name "Mutedeck"
  desc "Toggle mute, video, record, share, and leave a meeting in a call app"
  homepage "https://mutedeck.com/"

  livecheck do
    url "https://mutedeck.canny.io/api/changelog/feed.rss"
    regex(/<title>\s*v?(\d+(?:\.\d+)+)[ <"]/i)
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  installer manual: "MuteDeck-#{version}-Installer.app"

  uninstall launchctl: "application.com.mutedeck.mac",
            quit:      "com.mutedeck.mac",
            delete:    "/Applications/MuteDeck"

  zap trash: "~/Library/Application Support/mutedeck"
end
