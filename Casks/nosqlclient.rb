cask 'nosqlclient' do
  version '2.2.0'
  sha256 '49135ec4c19be93d77c079f9f4bce82db0538b524650ef812e8fd0b24451de64'

  # github.com/nosqlclient/nosqlclient was verified as official when first introduced to the cask
  url "https://github.com/nosqlclient/nosqlclient/releases/download/#{version}/osx-portable.zip"
  appcast 'https://github.com/nosqlclient/nosqlclient/releases.atom',
          checkpoint: '9b24141c2a6521f9f56c3f18735aa7311d5854c1956789f1b7e59a38e9941c8b'
  name 'Nosqlclient'
  homepage 'https://www.nosqlclient.com/'

  app 'Nosqlclient-darwin-x64/Nosqlclient.app'

  zap trash: [
               '~/Library/Application Support/Mongoclient',
               '~/Library/Preferences/com.electron.nosqlclient.helper.plist',
               '~/Library/Preferences/com.electron.nosqlclient.plist',
               '~/Library/Preferences/Mongoclient',
             ]
end
