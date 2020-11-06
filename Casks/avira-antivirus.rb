cask "avira-antivirus" do
  version :latest
  sha256 :no_check

  # install.avira-update.com/ was verified as official when first introduced to the cask
  url "https://install.avira-update.com/package/wks_avira/osx/int/pecl/Avira_Antivirus.pkg"
  name "Avira Antivirus"
  desc "Antivirus and VPN software"
  homepage "https://www.avira.com/en/free-antivirus-mac/"

  depends_on macos: ">= :el_capitan"

  pkg "Avira_Antivirus.pkg"

  uninstall script:  {
    executable: "/Applications/Utilities/Avira-Uninstall.app/Contents/MacOS/Avira-Uninstall",
    sudo:       true,
  },
            pkgutil: "com.avira.pkg.AviraMacSecurity"

  zap trash: "~/Library/Saved Application State/com.avira.controlcenter.savedState"
end
