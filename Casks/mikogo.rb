cask "mikogo" do
  version "5.4.1"
  sha256 :no_check

  url "https://download.mikogo4.com/Mikogo-installer.signed.pkg",
      verified: "mikogo4.com/"
  name "Mikogo"
  homepage "https://www.mikogo.com/"

  livecheck do
    skip "unversioned URL"
  end

  pkg "Mikogo-installer.signed.pkg"

  uninstall pkgutil: [
    "com.mikogo.open-beta",
    "com.mikogo.open-beta.video",
  ]
end
