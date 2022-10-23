cask "hancom-word-2014" do
  version :latest
  sha256 :no_check

  url "https://cdn.hancom.com/pds/hnc/DOWN/HwpMac2014VP_Home.pkg",
      referer: "https://hancom.com/mypage/myIndivPrdtList.do"
  name "Hacom Word Processor 2014 VP"
  desc "Word processor"
  homepage "https://office.hancom.com/"

  pkg "HwpMac2014VP_Home.pkg"

  uninstall quit:    "com.hancom.office.hwp.mac.general",
            pkgutil: [
              "com.haansoft.hanwordQuickLookGenerator",
              "com.hancom.office.hwp.mac.general",
            ]

  zap trash: [
    "~/Library/Caches/com.hancom.office.hwp.mac.general",
    "~/Library/Preferences/com.hancom.office.hwp.mac.general.plist",
    "/private/var/db/receipts/com.hancom.office.hwp.mac.general.bom",
    "/private/var/db/receipts/com.hancom.office.hwp.mac.general.plist",
  ]
end
