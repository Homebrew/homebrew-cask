cask 'next' do
  version '0.05'
  sha256 '64b8fa32387ce1d467238bb20405b9620f08dd00df121c49f948ac64aca6d6aa'

  url "https://github.com/nEXT-Browser/nEXT/releases/download/#{version}/nEXT.dmg"
  appcast 'https://github.com/nEXT-Browser/nEXT/releases.atom',
          checkpoint: '5f62552a7609426aa1ed9c33b0cdf9dc4cdad7cfcff9ed0a6e6183dfba9a234a'
  name 'nEXT-Browser'
  homepage 'https://github.com/nEXT-Browser/nEXT'

  app 'nEXT.app'

  zap trash: '~/Library/Caches/next.browser'
end
