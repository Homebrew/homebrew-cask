cask 'avira-antivirus' do
  version :latest
  sha256 :no_check

  # install.avira-update.com was verified as official when first introduced to the cask
  url 'https://install.avira-update.com/package/wks_avira/osx/int/pecl/Avira_Antivirus.pkg'
  name 'Avira Antivirus'
  homepage 'https://www.avira.com/en/free-antivirus-mac'

  auto_updates true

  pkg 'Avira_Antivirus.pkg'

  uninstall script:  '/Applications/Utilities/Avira-Uninstall.app/Contents/MacOS/uninstall',
            pkgutil: 'com.avira.pkg.AviraMacSecurity'

  zap delete: '~/Library/Saved Application State/com.avira.controlcenter.savedState'
end
