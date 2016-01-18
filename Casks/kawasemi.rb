cask 'kawasemi' do
  version :latest
  sha256 :no_check

  url 'https://store.monokakido.jp/download/Kawasemi2/Kawasemi2.dmg'
  name 'Kawasemi'
  name 'かわせみ'
  homepage 'https://www.monokakido.jp/mac/kawasemi2.html'
  license :commercial

  pkg 'Kawasemi2 Installer.app/Contents/Resources/Kawasemi2.pkg'

  uninstall pkgutil:   'jp.monokakido.Kawasemi2.pkg',
            launchctl: [
                         'jp.monokakido.Kawasemi2.Enabler',
                         'jp.monokakido.Kawasemi2.Update.helper',
                       ]

  zap delete: [
                '/Library/Application Support/MONOKAKIDO/Kawasemi2',
                '/Library/LaunchAgents/jp.monokakido.Kawasemi2.Enabler.plist',
                '/Library/Preferences/jp.monokakido.inputmethod.Kawasemi2.registration.plist',
                '~/Library/Preferences/jp.monokakido.Kawasemi2.Enabler.plist',
                '~/Library/Preferences/jp.monokakido.inputmethod.Kawasemi2.registration.plist',
              ]

  caveats do
    reboot
  end
end
