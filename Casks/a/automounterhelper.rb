cask "automounterhelper" do
  version "1.7.0"
  sha256 :no_check

  url "https://pixeleyes.co.nz/automounter/helper/AutoMounterHelper.dmg"
  name "AutoMounterHelper"
  desc "Helper for AutoMounter to mount shares to custom locations"
  homepage "https://pixeleyes.co.nz/automounter/helper/"

  livecheck do
    url :homepage
    regex(/Version:\s+v?(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :monterey"

  installer manual: "AutoMounterHelper.app"

  uninstall launchctl: "nz.co.pixeleyes.AutoMounterHelper",
            trash:     "~/Library/AutoMounterHelper"

  # No zap stanza required
end
