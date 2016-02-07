cask 'bilibili' do
  version '2.27'
  sha256 'fe2e40a1e4224b15fbfc8d285d748e1706952bbe0f4691dec2aa1da031765177'

  url "https://github.com/typcn/bilibili-mac-client/releases/download/#{version}/Bilibili.dmg.zip"
  appcast 'https://github.com/typcn/bilibili-mac-client/releases.atom',
          checkpoint: 'f49ac8f0325a745c27882b8d1e55eb2a2ed0d2cbc359e328151d728e0908afe9'
  name 'Bilibili'
  homepage 'https://github.com/typcn/bilibili-mac-client/'
  license :gpl

  container nested: 'Bilibili.dmg'

  app 'Bilibili.app'
end
