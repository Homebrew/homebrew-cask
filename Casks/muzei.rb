cask 'muzei' do
  version '1.0'
  sha256 '67f24d997e0d6aeca4526d501ef147f6faf60f4250ffb3b8c293bb4a55f21759'

  url "https://github.com/naman14/Muzei-macOS/releases/download/v#{version}/Muzei.app.zip"
  appcast 'https://github.com/naman14/Muzei-macOS/releases.atom'
  name 'Muzei'
  homepage 'https://github.com/naman14/Muzei-macOS'

  app 'Muzei.app'

  uninstall login_item: 'Muzei',
            quit:       'com.naman14.muzeimacos'

  zap trash: [
               '~/Library/Application Scripts/com.naman14.muzeimacos',
               '~/Library/Containers/com.naman14.muzeimacos',
             ]
end
