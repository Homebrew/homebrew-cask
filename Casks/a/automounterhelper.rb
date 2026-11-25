cask "automounterhelper" do
  version "1.10.1"
  sha256 :no_check

  url "https://pixeleyes.co.nz/automounter/helper/AutoMounterHelper.dmg"
  name "AutoMounterHelper"
  desc "Helper for AutoMounter to mount shares to custom locations"
  homepage "https://pixeleyes.co.nz/automounter/helper/"

  livecheck do
    url :homepage
    regex(%r{Version\s*</dt>\s*<dd[^>]*>\s*v?(\d+(?:\.\d+)+)}i)
  end

  depends_on macos: :monterey

  installer manual: "AutoMounterHelper.app"

  uninstall launchctl: "nz.co.pixeleyes.AutoMounterHelper",
            trash:     "~/Library/AutoMounterHelper"

  zap :not_required
end
