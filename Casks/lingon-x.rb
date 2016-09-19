cask 'lingon-x' do
  version '4.2.1'
  sha256 'b81d46756ba7d057f81da449308ea462365ba79415e7f6fde80bec5b19d83ebf'

  url "https://www.peterborgapps.com/downloads/LingonX#{version.major}.zip"
  appcast "https://www.peterborgapps.com/updates/lingonx#{version.major}-appcast.xml",
          checkpoint: 'ff639740cf23d44499f06d806ec07cfa12656bb90982265e148df48b6145bc7c'
  name 'Lingon X'
  homepage 'https://www.peterborgapps.com/lingon/'
  license :commercial

  depends_on macos: '>= :yosemite'

  app 'Lingon X.app'
end
