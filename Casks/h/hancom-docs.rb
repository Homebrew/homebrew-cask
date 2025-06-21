cask "hancom-docs" do
  version "12.30.0.5881"
  sha256 :no_check

  url "https://cdn.hancom.com/pds/hnc/DOWN/HancomDocs/HwpMac_HancomDocs.pkg",
      referer: "https://hancom.com/mypage/myIndivPrdtList.do"
  name "Hancom Docs"
  desc "Word processor"
  homepage "https://office.hancom.com/"

  livecheck do
    url "https://cdn.hancom.com/upd/HwpMac2022/HancomOfficeHWPDocs/hupdate_mac.ini"
    regex(/Hwp_mac\s*=\s*(\d+(?:\.\d+)+)/i)
  end

  pkg "HwpMac_HancomDocs.pkg"

  uninstall quit:    "com.hancom.office.hwp#{version.major}.mac.general",
            pkgutil: "com.hancom.office.hwp#{version.major}.mac.general"

  zap trash: [
    "~/Library/Caches/com.hancom.office.hwp*.mac.general",
    "~/Library/HTTPStorages/com.hancom.office.hwp*.mac.general",
    "~/Library/HTTPStorages/com.hancom.office.hwp*.mac.general.binarycookies",
    "~/Library/Preferences/com.hancom.office.hwp*.mac.general.plist",
    "~/Library/Saved Application State/com.hancom.office.hwp*.mac.general.savedState",
    "~/Library/WebKit/com.hancom.office.hwp*.mac.general",
  ]
end
