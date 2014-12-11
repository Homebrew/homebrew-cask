cask :v1 => 'kitematic' do
  version '0.4.0'
  sha256 'bacc15d30c92cd2592dc3b553b830098f7b87fd39c92f5580f20081a7eb499f2'

  url "https://github.com/kitematic/kitematic/releases/download/v#{version}/Kitematic-#{version}.zip"
  homepage 'https://kitematic.com/'
  license :unknown    # todo: improve this machine-generated value

  app 'Kitematic.app'
end
