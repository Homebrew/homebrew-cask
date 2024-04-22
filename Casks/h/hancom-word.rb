cask "hancom-word" do
  version "12.30.0.5708"
  sha256 :no_check

  url "https://cdn.hancom.com/pds/hnc/DOWN/HancomOfficeHWPGeneral.pkg",
      referer: "https://hancom.com/mypage/myIndivPrdtList.do"
  name "Hacom Word Processor"
  desc "Word processor"
  homepage "https://office.hancom.com/"

  livecheck do
    url "https://cdn.hancom.com/upd/HwpMac2022/HancomOfficeHWPDocs/hupdate_mac.ini"
    regex(/hwp_mac.*?(\d+(?:\.\d+)+)/i)
  end

  pkg "HancomOfficeHWPGeneral.pkg"

  uninstall quit:    "com.hancom.office.hwp#{version.major}.mac.general",
            pkgutil: "com.hancom.office.hwp#{version.major}.mac.general"

  zap trash: [
    "~/Library/Caches/com.hancom.office.hwp#{version.major}.mac.general",
    "~/Library/HTTPStorages/com.hancom.office.hwp#{version.major}.mac.general",
    "~/Library/HTTPStorages/com.hancom.office.hwp#{version.major}.mac.general.binarycookies",
    "~/Library/Preferences/com.hancom.office.hwp#{version.major}.mac.general.plist",
    "~/Library/Saved Application State/com.hancom.office.hwp#{version.major}.mac.general.savedState",
    "~/Library/WebKit/com.hancom.office.hwp#{version.major}.mac.general",
  ]
end
