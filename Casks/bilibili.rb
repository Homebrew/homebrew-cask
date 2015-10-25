cask :v1 => 'bilibili' do
  version '2.15'
  sha256 'a56ade28a22a640180ed9047105c1257b890f014f667056bfc41c059df9218ba'

  url "https://github.com/typcn/bilibili-mac-client/releases/download/#{version}/Bilibili.dmg.zip"
  name 'Bilibili'
  appcast 'http://app.eqoe.cn/updates/bilimac.xml',
          :sha256 => '37ff7a6d6d82f87cc45a85a2ebfc87e470aeb210b5adedbeb78f180b5ac28971'
  homepage 'https://github.com/typcn/bilibili-mac-client/'
  license :gpl

  container :nested => 'Bilibili.dmg'
  app 'Bilibili.app'
end
