cask :v1 => 'bilibili' do
  version '2.00'
  sha256 'cc0945e675c8fdf702ba1da8554955c68d9df9ad8c8c86b78af0d85d8d87cfc4'

  url "https://github.com/typcn/bilibili-mac-client/releases/download/#{version}/Bilibili.dmg.zip"
  name 'Bilibili'
  appcast 'http://app.eqoe.cn/updates/bilimac.xml',
          :sha256 => '44da046ea7dbfad40ce41fe913b330ba4656104ece8fb18648f0120420b30992'
  homepage 'https://github.com/typcn/bilibili-mac-client/'
  license :gpl

  container :nested => 'Bilibili.dmg'
  app 'Bilibili.app'
end
