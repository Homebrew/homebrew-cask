cask :v1 => 'hobo' do
  version '1.1.3'
  sha256 '6d04960efe0b9c4b4a7fad55be660640b1f85ca9a94d591a1a292218bf1a2b9b'

  # netdna-ssl.com is the official download host per the vendor homepage
  url "https://downloads-clickonideas.netdna-ssl.com/hobo/hobo_#{version}.zip"
  appcast 'https://shine.clickontyler.com/appcast.php?id=31'
  name 'Hobo'
  homepage 'https://clickontyler.com/hobo/'
  license :commercial

  app 'Hobo.app'
end
