cask 'kawasemi' do
  version '2.0.7'
  sha256 '8b387f6177baf8aaaa6d5e650925b5e02b5c9a0605b769d2ec0755ee41950c84'

  url "https://store.monokakido.jp/download/Kawasemi#{version.major}/Kawasemi#{version.major}.dmg"
  name 'Kawasemi'
  name 'かわせみ'
  homepage 'http://www.monokakido.jp/mac/kawasemi2.html'

  pkg "Kawasemi#{version.major} Installer.app/Contents/Resources/Kawasemi#{version.major}.pkg"

  uninstall pkgutil:   "jp.monokakido.Kawasemi#{version.major}.pkg",
            launchctl: [
                         "jp.monokakido.Kawasemi#{version.major}.Enabler",
                         "jp.monokakido.Kawasemi#{version.major}.Update.helper",
                       ]

  zap delete: [
                "/Library/Application Support/MONOKAKIDO/Kawasemi#{version.major}",
                "/Library/LaunchAgents/jp.monokakido.Kawasemi#{version.major}.Enabler.plist",
                "/Library/Preferences/jp.monokakido.inputmethod.Kawasemi#{version.major}.registration.plist",
                "~/Library/Preferences/jp.monokakido.Kawasemi#{version.major}.Enabler.plist",
                "~/Library/Preferences/jp.monokakido.inputmethod.Kawasemi#{version.major}.registration.plist",
              ]

  caveats do
    reboot
  end
end
