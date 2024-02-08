cask "hancom-word" do
  version "12.30.0,5491"
  sha256 :no_check

  url "https://cdn.hancom.com/pds/hnc/DOWN/HancomDocs/HwpMac_HancomDocs.pkg",
      referer: "https://hancom.com/mypage/myIndivPrdtList.do"
  name "Hacom Word Processor 2022"
  desc "Word processor"
  homepage "https://office.hancom.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  pkg "HwpMac_HancomDocs.pkg"

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
