cask :v1 => 'hobo' do
  version '1.1.4'
  sha256 'ff7b28a846ed10387d1d4bca18cbb514a735d1374798b03cf540adf5c27890c2'

  # netdna-ssl.com is the official download host per the vendor homepage
  url "https://downloads-clickonideas.netdna-ssl.com/hobo/hobo_#{version}.zip"
  appcast 'https://shine.clickontyler.com/appcast.php?id=31'
  name 'Hobo'
  homepage 'https://clickontyler.com/hobo/'
  license :commercial

  app 'Hobo.app'
end
