cask "clover-theme-manager" do
  version "0.77.2"
  sha256 "6cd6247d407f36a852491b6cc98b279d194952cee066bd1406ce9b593cf7af57"

  url "https://sourceforge.net/p/cloverefiboot/themes/ci/master/tree/CloverThemeManagerApp/Updates/CloverThemeManager.zip?format=raw"
  appcast "https://sourceforge.net/p/cloverefiboot/themes/ci/master/tree/CloverThemeManagerApp/Updates/CTM_AppCast.xml?format=raw"
  name "Clover Theme Manager"
  desc "Theme manager app for clover"
  homepage "https://sourceforge.net/p/cloverefiboot/themes"

  app "CloverThemeManager.app"

  zap trash: [
    "~/Library/Preferences/com.CloverThemeManager.plist",
    "~/Library/Application Support/CloverThemeManager",
    "~/Library/Caches/com.CloverThemeManager",
  ]
end
