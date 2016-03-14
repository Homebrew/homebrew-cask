cask 'bilibili' do
  version '2.35'
  sha256 '5a1d43b9344b01fbca5b0fdfa8504a15ec012b6a27b8db92c52cd624cbfe4b06'

  url "https://github.com/typcn/bilibili-mac-client/releases/download/#{version}/Bilibili.dmg.zip"
  appcast 'https://github.com/typcn/bilibili-mac-client/releases.atom',
          checkpoint: '76891528ff02547815bfe50a3de7b999edbb4dbb3538015122e3c3930450a2cf'
  name 'Bilibili'
  homepage 'https://github.com/typcn/bilibili-mac-client/'
  license :gpl

  container nested: 'Bilibili.dmg'

  app 'Bilibili.app'
end
