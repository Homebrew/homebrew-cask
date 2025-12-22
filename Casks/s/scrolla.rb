cask "scrolla" do
  version "29"
  sha256 :no_check

  url "https://releases.scrolla.app/Scrolla.zip"
  name "Scrolla"
  desc "Scroll with the keyboard using Vim motions"
  homepage "https://scrolla.app/"

  livecheck do
    url "https://releases.scrolla.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Scrolla.app"

  zap trash: [
    "~/Library/Application Scripts/mo.com.sleeplessmind.Scrolla",
    "~/Library/Application Scripts/mo.com.sleeplessmind.Scrolla-LaunchAtLoginHelper",
    "~/Library/Application Support/Scrolla",
    "~/Library/Caches/mo.com.sleeplessmind.Scrolla",
    "~/Library/Containers/mo.com.sleeplessmind.Scrolla",
    "~/Library/Containers/mo.com.sleeplessmind.Scrolla-LaunchAtLoginHelper",
    "~/Library/HTTPStorages/mo.com.sleeplessmind.Scrolla",
    "~/Library/HTTPStorages/mo.com.sleeplessmind.Scrolla.binarycookies",
    "~/Library/Preferences/mo.com.sleeplessmind.Scrolla.plist",
    "~/Library/Saved Application State/mo.com.sleeplessmind.Scrolla.savedState",
  ]
end
