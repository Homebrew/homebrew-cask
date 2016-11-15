cask 'black-screen' do
  version '0.2.85'
  sha256 '42e0856d79a38375e252aa66404e66f996f76ff94d7af0104c5466361950d1dd'

  url "https://github.com/shockone/black-screen/releases/download/v#{version}/black-screen-#{version}-mac.zip"
  appcast 'https://github.com/shockone/black-screen/releases.atom',
          checkpoint: '54164cf85208ee0231d29bafa0b21c5764070ec48f5d266a933bf4dee3c764b3'
  name 'Black Screen'
  homepage 'https://github.com/shockone/black-screen'

  app 'Black Screen.app'

  zap delete: '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.github.shockone.black-screen.sfl'
end
