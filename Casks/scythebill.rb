cask 'scythebill' do
  version '12.6.0'
  sha256 '463612974cb2686eea3edc78f8587098087da88ca8cf6b13103e85fe8c182a89'

  # amazonaws.com/downloads.scythebill.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/downloads.scythebill.com/scythebill-#{version}-mac-lion.zip"
  name 'Scythebill'
  homepage 'http://www.scythebill.com/'
  license :apache

  container nested: "Scythebill #{version}.dmg"

  app 'Scythebill.app'

  caveats do
    depends_on_java
  end
end
