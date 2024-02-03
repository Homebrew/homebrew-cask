cask "hancom-office" do
  version "12.30.0.5542"
  sha256 "98124f07e7950efea972737a2da63599e358c8a6ef5088e05f7f7825af7ea6d7"

  url "https://cdn.hancom.com/pds/hnc/DOWN/HancomOffice-general-#{version}.pkg",
      referer: "https://hancom.com/mypage/myIndivPrdtList.do"
  name "Hacom Office for Mac"
  desc "Word processor"
  homepage "https://office.hancom.com/"

  livecheck do
    skip "No version information available"
  end

  pkg "HancomOffice-general-#{version}.pkg"

  uninstall quit:    "com.hancom.office.hwp#{version.major}.mac.general",
            pkgutil: "com.hancom.office.hwp#{version.major}.mac.general"

  zap trash: [
    "~/Library/Caches/com.hancom.office.hwp#{version.major}.mac.general",
    "~/Library/HTTPStorages/com.hancom.office.hwp#{version.major}.mac.general",
    "~/Library/HTTPStorages/com.hancom.office.hwp#{version.major}.mac.general.binarycookies",
    "~/Library/Preferences/com.hancom.office.hwp#{version.major}.mac.general.plist",
  ]
end
