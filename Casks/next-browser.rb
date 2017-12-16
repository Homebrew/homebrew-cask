cask 'next-browser' do
  version '0.05'
  sha256 '64b8fa32387ce1d467238bb20405b9620f08dd00df121c49f948ac64aca6d6aa'

  url "https://github.com/nEXT-Browser/nEXT/releases/download/#{version}/nEXT.dmg"
  name 'nEXT-Browser'
  homepage 'https://github.com/nEXT-Browser/nEXT'

  app 'nEXT.app'

  zap trash: [
               '~/Library/Caches/next.browser',
             ]
end
