cask 'avira-antivirus' do
  version :latest
  sha256 :no_check

  url 'https://install.avira-update.com/package/wks_avira/osx/int/pecl/Avira_Free_Antivirus_for_Mac.pkg'
  name 'Avira Antivirus'
  homepage 'https://www.avira.com/en/free-antivirus-mac'
  license :commercial

  pkg 'Avira_Free_Antivirus_for_Mac.pkg'

  uninstall script:  '/Applications/Utilities/Avira-Uninstall.app/Contents/MacOS/uninstall',
            pkgutil: 'com.avira.pkg.AviraMacSecurity'
end
