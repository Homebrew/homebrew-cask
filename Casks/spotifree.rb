cask :v1 => 'spotifree' do
  version '1.6.4'
  sha256 '4f20883f1c3d3530999979712ea804f339b88602e3c976b8cb85f7df6b767e76'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/ArtemGordinsky/Spotifree/releases/download/#{version}/Spotifree.dmg"
  appcast 'http://spotifree.gordinskiy.com/appcast.xml'
  name 'Spotifree'
  homepage 'http://spotifree.gordinskiy.com'
  license :oss

  app 'Spotifree.app'
end
