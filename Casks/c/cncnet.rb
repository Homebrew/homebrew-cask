cask "cncnet" do
  version "2.1"
  sha256 :no_check

  url "https://funkyfr3sh.cnc-comm.com/files/CnCNet.dmg",
      verified: "funkyfr3sh.cnc-comm.com/"
  name "CnCNet: Classic Command & Conquer"
  homepage "https://cncnet.org/"

  livecheck do
    url :url
    strategy :extract_plist do |item|
      item["CnCNet459984781Wine.wineskin.prefs"].short_version
    end
  end

  app "CnCNet.app"
end
