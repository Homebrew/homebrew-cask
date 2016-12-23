cask 'scythebill' do
  version '13.4.0'
  sha256 'a503abb08e9ad22bd90c8a1e3c5acbc011ff9c39c4cdf1fea736bb1aa4ba9730'

  # amazonaws.com/downloads.scythebill.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/downloads.scythebill.com/Scythebill-#{version}.dmg"
  name 'Scythebill'
  homepage 'http://www.scythebill.com/'

  app 'Scythebill.app'

  caveats do
    depends_on_java
  end
end
