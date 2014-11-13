cask :v1 => 'microsoft-office' do
  version :latest
  sha256 :no_check

  url 'http://officecdn.microsoft.com/pr/MacOffice2011/en-US/MicrosoftOffice2011.dmg'
  homepage 'http://products.office.com/en-US/'
  license :commercial

  pkg 'Office Installer.pkg'
  uninstall :pkgutil => 'com.microsoft.office.*',
            :launchctl => 'com.microsoft.office.licensing.helper'
  zap :pkgutil => [
                  'com.microsoft.mau.all.autoupdate.*',
                  'com.microsoft.merp.all.errorreporting.*'
                  ]
end
