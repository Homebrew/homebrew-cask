cask "automounterhelper" do
  version "1.6.0"
  sha256 :no_check

  url "https://pixeleyes.co.nz/automounter/helper/AutoMounterHelper.dmg"
  name "AutoMounterHelper"
  desc "Helper for AutoMounter to mount shares to custom locations"
  homepage "https://pixeleyes.co.nz/automounter/helper/"

  livecheck do
    url :homepage
    regex(/Version:\s+v?(\d+(?:\.\d+)+)/i)
  end

  no_autobump! because: :requires_manual_review

  depends_on macos: ">= :monterey"

  app "AutoMounterHelper.app"

  # No zap stanza required
end
