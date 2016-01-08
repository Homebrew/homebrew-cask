cask 'lingon-x' do
  version '2.3.1'
  sha256 'a5276a87aa8fdcf35fbacabf1401cf414680db37730bc6461dd71fbdf1a678b4'

  url "https://www.peterborgapps.com/downloads/LingonX#{version.major}.zip"
  appcast "https://www.peterborgapps.com/updates/lingonx#{version.major}-appcast.xml",
          :sha256 => 'df1cb1f00c045efa8292ffd1918faeb3c6ae6186db76b8e5b6d524233bee7352'
  name 'Lingon X'
  homepage 'https://www.peterborgapps.com/lingon/'
  license :commercial

  depends_on :macos => '>= :yosemite'

  app 'Lingon X.app'
end
