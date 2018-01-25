cask 'hawk-eye' do
  version '0.2.0'
  sha256 'f62dbef8556a8b9d698ca0e10fb7aa550fc1a8a854c39f9417ddb158db9d2a09'

  url "https://github.com/harksys/HawkEye/releases/download/#{version}/hawkeye-#{version}-osx-x64.dmg"
  appcast 'https://github.com/harksys/HawkEye/releases.atom',
          checkpoint: '4538c950b3b0ea19563ec6134942866bcc105dd736730ee4acc4ee6269d1120f'
  name 'Hawk Eye'
  homepage 'https://github.com/harksys/HawkEye'

  auto_updates true

  app 'Hawk Eye.app'

  zap trash: [
               '~/Library/Application Support/Hawk Eye',
               '~/Library/Caches/harksys-hawkeye',
               '~/Library/Caches/harksys-hawkeye.ShipIt',
               '~/Library/Cookies/harksys-hawkeye.binarycookies',
               '~/Library/Preferences/harksys-hawkeye.helper.plist',
               '~/Library/Preferences/harksys-hawkeye.plist',
               '~/Library/Saved Application State/harksys-hawkeye.savedState',
             ]
end
