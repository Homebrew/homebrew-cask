cask :v1 => 'kitematic' do
  version '0.4.5'
  sha256 '4010dce0ef50720a97959a942f1eaa0edb4b65e6cca11bee084d2fbcfc00d5a8'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/kitematic/kitematic/releases/download/v#{version}/Kitematic-#{version}.zip"
  name 'Kitematic'
  homepage 'https://kitematic.com/'
  license :affero

  app 'Kitematic.app'
end
