cask "biopassfido" do
  version :latest
  sha256 :no_check

  url "https://www.ftsafe.com/download/webdownload/BioPass_FIDO2_Manager_for_Mac.dmg"
  name "BioPass FIDO2 Manager"
  homepage "https://www.ftsafe.com/"

  pkg "BioPassFIDO2.pkg"

  uninstall pkgutil: "com.ftsafe.BioPassFIDO2"
end
