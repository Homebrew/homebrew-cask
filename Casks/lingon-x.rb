cask 'lingon-x' do
  version '2.3.5'
  sha256 '7dc1e230b36c4309397f5fad5270050dea4295ea4779b7b40e528d6185e1f09f'

  url "https://www.peterborgapps.com/downloads/LingonX#{version.major}.zip"
  appcast "https://www.peterborgapps.com/updates/lingonx#{version.major}-appcast.xml",
          checkpoint: '3289b42891c6366693b3f74d6abb895de7c296d4c398d7e3e47b35ae85ed62ba'
  name 'Lingon X'
  homepage 'https://www.peterborgapps.com/lingon/'
  license :commercial

  depends_on macos: '>= :yosemite'

  app 'Lingon X.app'
end
