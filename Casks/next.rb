cask 'next' do
  version '0.07'
  sha256 '6b253f26f5866a883d499c269b3dab69ad5f554c7424946d5983eb1a4cc194e2'

  url "https://github.com/nEXT-Browser/nEXT/releases/download/#{version}/nEXT.dmg"
  appcast 'https://github.com/nEXT-Browser/nEXT/releases.atom',
          checkpoint: '87d4619eaf4bb026c226f87fb2a57dbf601a64f21698dfbcc8ff43cb49b4516d'
  name 'nEXT-Browser'
  homepage 'https://github.com/nEXT-Browser/nEXT'

  app 'nEXT.app'

  zap trash: '~/Library/Caches/next.browser'
end
