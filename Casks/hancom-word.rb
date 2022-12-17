cask "hancom-word" do
  version :latest
  sha256 :no_check

  url "https://cdn.hancom.com/pds/hnc/DOWN/HancomDocs/HwpMac_HancomDocs.pkg",
      referer: "https://hancom.com/mypage/myIndivPrdtList.do"
  name "Hacom Word Processor 2022"
  desc "Word processor"
  homepage "https://office.hancom.com/"

  pkg "HwpMac_HancomDocs.pkg"

  uninstall quit:    "com.hancom.office.hwp12.mac.general",
            pkgutil: [
              "com.hancom.office.hwp12.mac.general",
            ]
end
