cask 'hive' do
  version '1.4.2'
  sha256 '94b92d963c2b6f7c33ae0d0ced1de7df554f86331178c38516ef7327b1cda695'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/hivewallet/hive-mac/releases/download/#{version}/Hive-#{version}.zip"
  appcast 'https://github.com/hivewallet/hive-mac/releases.atom',
          checkpoint: '8e016f112a87ec43f0665ff2d29a1e93c18cae7332061a8cf19f0199dabd1e95'
  name 'Hive'
  homepage 'https://mac.hivewallet.com'
  license :gpl

  app 'Hive.app'

  postflight do
    suppress_move_to_applications
  end
end
