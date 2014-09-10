class ScreensConnect < Cask
  version 'latest'
  sha256 :no_check

  url 'https://screensconnect.com/downloads/screensconnect.dmg'
  homepage 'https://screensconnect.com'

  pkg 'Screens Connect.pkg'
  uninstall :script => 'Uninstall Screens Connect.app/Contents/Resources/sc-uninstaller.tool'

  uninstall_preflight do
    system '/bin/chmod', '+x', "#{destination_path}/Uninstall Screens Connect.app/Contents/Resources/sc-uninstaller.tool"
  end
end
