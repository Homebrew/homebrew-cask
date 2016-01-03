cask 'kitematic' do
  version '0.9.5'
  sha256 'a8b078cea9f77129fee63df810bc80faf3f56f4c1e6b724397c06ef77fae5e19'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/kitematic/kitematic/releases/download/v#{version}/Kitematic-#{version}-Mac.zip"
  appcast 'https://github.com/kitematic/kitematic/releases.atom',
          :sha256 => '44025e7a855b6afc4c645971e90cd49b576aa4772ce1de8bec35f7b092596594'
  name 'Kitematic'
  homepage 'https://kitematic.com/'
  license :apache

  app 'Kitematic (Beta).app'

  zap :delete => [
                   '~/Library/Application Support/Kitematic',
                   '~/Kitematic',
                 ]
end
