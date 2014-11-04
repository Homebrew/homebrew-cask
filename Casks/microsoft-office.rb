class MicrosoftOffice < Cask
  version :latest
  sha256 :no_check

  url 'http://officecdn.microsoft.com/pr/MacOffice2011/en-US/MicrosoftOffice2011.dmg'
  homepage 'http://products.office.com/en-US/'
  license :commercial

  pkg 'Office Installer.pkg'
  uninstall :pkgutil => 'com.microsoft.office.*'
  uninstall :pkgutil => 'com.microsoft.QuitApps'
  uninstall :launchctl => 'com.microsoft.office.licensing.helper'
end
