cask 'scythebill' do
  version '13.5.0'
  sha256 'bd30b4e8ffba2f5a538f5128ddcef797a9bcbe766d39485de064d3e9fe2f16f6'

  # amazonaws.com/downloads.scythebill.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/downloads.scythebill.com/Scythebill-#{version}.dmg"
  name 'Scythebill'
  homepage 'http://www.scythebill.com/'

  app 'Scythebill.app'

  caveats do
    depends_on_java
  end
end
