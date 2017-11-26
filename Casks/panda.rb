cask 'panda' do
  version '1.4.2'
  sha256 '551a2f4c2195dd1c00e7dfe83836a86485212ebeb6b008f130cecb83e002e3b8'

  # github.com/pablosproject/Panda-Mac-app was verified as official when first introduced to the cask
  url "https://github.com/pablosproject/Panda-Mac-app/releases/download/#{version}/Panda.zip"
  appcast 'https://github.com/pablosproject/Panda-Mac-app/releases.atom',
          checkpoint: '01c9af95281d4243c9682a677f9828fa52f9bb01d2be7cd1caa3b70ec660b15b'
  name 'Panda'
  homepage 'http://pandapp.pablosproject.com/'

  auto_updates true

  app 'Panda.app'

  zap trash: [
               '~/Library/Caches/com.pablosproject.Panda',
               '~/Library/Preferences/com.pablosproject.Panda.plist',
             ]
end
