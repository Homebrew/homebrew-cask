cask 'lingon-x' do
  version '4.3.3'
  sha256 'a60e372828a75d0bd621c1692427ad0e89a5518f4344449d7393752417906016'

  url "https://www.peterborgapps.com/downloads/LingonX#{version.major}.zip"
  appcast "https://www.peterborgapps.com/updates/lingonx#{version.major}-appcast.xml",
          checkpoint: '9ffd18cd9a00e6e4bcdddaa552a5c6cc22b0374e80f1f292624950e8f19eef6e'
  name 'Lingon X'
  homepage 'https://www.peterborgapps.com/lingon/'

  depends_on macos: '>= :yosemite'

  app 'Lingon X.app'
end
