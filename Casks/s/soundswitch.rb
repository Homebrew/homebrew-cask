cask "soundswitch" do
  version "2.10.2"
  sha256 :no_check

  url "https://cdn.inmusicbrands.com/soundswitch/files/SoundSwitchInstaller.pkg",
      verified: "cdn.inmusicbrands.com/soundswitch/files/"
  name "SoundSwitch"
  desc "Lighting control software for DJs"
  homepage "https://www.soundswitch.com/products"

  livecheck do
    skip "No version information available"
  end

  depends_on macos: ">= :big_sur"

  pkg "SoundSwitchInstaller.pkg"

  uninstall pkgutil: "com.soundswitch.SoundSwitch"

  zap trash: [
    "~/Library/Caches/SoundSwitch",
    "~/Library/Preferences/com.soundswitch.SoundSwitch.plist",
  ]
end
