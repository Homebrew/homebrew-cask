cask :v1 => 'skreenics' do
  version '1.0.1'
  sha256 'c4edd3cb8d066c5b5ce8ab78fe476776d04ad5b8e28eb7128bb183903f7dd8b9'

  url "https://skreenics.googlecode.com/files/Screeniks-#{version}.zip"
  homepage 'https://code.google.com/p/skreenics/'
  license :oss

  app 'Skreenics.app'
end
