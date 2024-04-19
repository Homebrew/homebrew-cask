cask "hancom-word" do
  version "12.30.0.5688"
  sha256 "8caf71c07ae0ed3876b2ca1fd092ecaae0370d7b6b0826dcb7b1bba518567082"

  url "https://cdn.hancom.com/pds/hnc/DOWN/HancomOfficeHWPGeneral.pkg",
      referer: "https://hancom.com/mypage/myIndivPrdtList.do"
  name "Hacom Word Processor 2024"
  desc "Word processor"
  homepage "https://office.hancom.com/"

  livecheck do
    url "https://cdn.hancom.com/upd/HwpMac2022/HancomOfficeHWPDocs/hupdate_mac.ini"
    regex(/Hwp_mac\s*=\s*(\d+(?:\.\d+)+)/i)
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
