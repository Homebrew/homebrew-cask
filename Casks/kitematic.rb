cask :v1 => 'kitematic' do
  version '0.5.9'
  sha256 'dfd623e7b152c05ed3e5ba4dfaded9904a17776641ced020229d94df3b8ae5c7'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/kitematic/kitematic/releases/download/v#{version}/Kitematic-#{version}.zip"
  name 'Kitematic'
  homepage 'https://kitematic.com/'
  license :affero

  app 'Kitematic.app'
end
