cask 'scythebill' do
  version '12.9.1'
  sha256 '5a96cfaf72f5a574129856908502ecb06416d870fc0a5284ac665da5ed655649'

  # amazonaws.com/downloads.scythebill.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/downloads.scythebill.com/scythebill-#{version}-mac-lion.zip"
  name 'Scythebill'
  homepage 'http://www.scythebill.com/'
  license :apache

  app 'Scythebill.app'

  caveats do
    depends_on_java
  end
end
