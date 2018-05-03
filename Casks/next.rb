cask 'next' do
  version '0.07'
  sha256 '6b253f26f5866a883d499c269b3dab69ad5f554c7424946d5983eb1a4cc194e2'

  url "https://github.com/nEXT-Browser/nEXT/releases/download/#{version}/nEXT.dmg"
  appcast 'https://github.com/nEXT-Browser/nEXT/releases.atom',
          checkpoint: 'f5dec83b8e73c75011c335ec2e57be3a9b4c60f52246650657f68a89247db1e4'
  name 'nEXT-Browser'
  homepage 'https://github.com/nEXT-Browser/nEXT'

  app 'nEXT.app'

  zap trash: '~/Library/Caches/next.browser'
end
