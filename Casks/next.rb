cask 'next' do
  version '0.07'
  sha256 '88f92765fe9963b0800de73775cf9bf5fd8d793674f9da1755676e832d523d2a'

  url "https://github.com/nEXT-Browser/nEXT/releases/download/#{version}/nEXT.dmg"
  appcast 'https://github.com/nEXT-Browser/nEXT/releases.atom',
          checkpoint: 'f5dec83b8e73c75011c335ec2e57be3a9b4c60f52246650657f68a89247db1e4'
  name 'nEXT-Browser'
  homepage 'https://github.com/nEXT-Browser/nEXT'

  app 'nEXT.app'

  zap trash: '~/Library/Caches/next.browser'
end
