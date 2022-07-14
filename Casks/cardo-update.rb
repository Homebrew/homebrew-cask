cask "cardo-update" do
  version "3.6.0"
  sha256 :no_check

  url "https://update.cardosystems.com/cardo-app/cardo_updater_macOS_latest.pkg"
  name "Cardo Update"
  desc "Update your cardo to keep it fresh"
  homepage "https://www.cardosystems.com/software-update-info/"

  depends_on macos: ">= :el_capitan"

  pkg "cardo_updater_macOS_latest.pkg"

  uninstall pkgutil: "com.cardo.fwupdater",
            delete:  "/Applications/Cardo Update.app"
end
