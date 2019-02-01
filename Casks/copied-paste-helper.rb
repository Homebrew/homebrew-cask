cask 'copied-paste-helper' do
  version '0.1.0'
  sha256 'be14497630f80ba1f312700361519369894284379b7f326869192965f683e755'

  url 'https://copiedapp.com/Copied-PasteHelper.dmg'
  name 'Copied Paste Helper'
  homepage 'https://copiedapp.com'

  installer script: {
    executable: 'PasteHelper Installer.app/Contents/MacOS/PasteHelper'
  }

  uninstall launchctl: [

                       ]

end
