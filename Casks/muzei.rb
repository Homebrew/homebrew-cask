cask 'muzei' do
  version '2.0'
  sha256 'eef5e560cd41905e0fe52e5478c1a98da60386187314fb834a27c728f3a618e1'

  url "https://github.com/naman14/Muzei-macOS/releases/download/V#{version}/Muzei.app.zip"
  appcast 'https://github.com/naman14/Muzei-macOS/releases.atom'
  name 'Muzei'
  homepage 'https://github.com/naman14/Muzei-macOS'

  depends_on macos: '>= :sierra'

  app 'Muzei.app'

  uninstall quit: 'com.naman14.muzeimacos'

  zap trash: [
               '~/Library/Application Scripts/com.naman14.muzeimacos',
               '~/Library/Containers/com.naman14.muzeimacos',
             ]
end
