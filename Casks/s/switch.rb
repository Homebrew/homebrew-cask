cask "switch" do
  version "12.04"
  sha256 :no_check

  url "https://www.nch.com.au/components/switchmaci.zip"
  name "Switch Audio Converter"
  desc "Multiple format audio file converter"
  homepage "https://www.nch.com.au/switch/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "Switch.app"

  zap trash: [
    "~/Library/Application Support/Switch",
    "~/Library/Application Support/SwitchSubStatAbort",
    "~/Library/Caches/com.apple.tiswitcher.cache",
    "~/Library/Caches/SwitchCounts.txt",
    "~/Library/Preferences/ByHost/com.nchsoftware.switch.*.plist",
    "~/Library/Preferences/com.nchsoftware.switch.plist",
  ]
end
