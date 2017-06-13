cask 'scythebill' do
  version '13.6.0'
  sha256 'c331db9215c1f67f325ca8bf701a4ed26160c1272c84069f28c32aacc2633871'

  # amazonaws.com/downloads.scythebill.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/downloads.scythebill.com/Scythebill-#{version}.dmg"
  appcast 'http://www.scythebill.com/download.html',
          checkpoint: 'bd019e0885d4e16340f8bb00be73b0ad01a26ff69e9fbf126f8d2102b345c4e8'
  name 'Scythebill'
  homepage 'http://www.scythebill.com/'

  app 'Scythebill.app'

  caveats do
    depends_on_java
  end
end
