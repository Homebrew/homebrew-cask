cask :v1 => 'screens-connect' do
  version :latest
  sha256 :no_check

  url 'https://screensconnect.com/downloads/screensconnect.dmg'
  homepage 'https://screensconnect.com'
  license :unknown

  pkg 'Screens Connect.pkg'
  uninstall :script => 'Uninstall Screens Connect.app/Contents/Resources/sc-uninstaller.tool',
            :pkgutil => 'com.edovia.pkg.screens.connect.*'

  uninstall_preflight do
    system '/bin/chmod', '+x', "#{staged_path}/Uninstall Screens Connect.app/Contents/Resources/sc-uninstaller.tool"
  end
end
