cask :v1 => 'bit-slicer' do
  version '1.7.5'
  sha256 '286487687fbd9a46f3d7bfa943a912a3e05183af06ebfaef8f6820253d5f93e7'

  # bitbucket.org is the official download host per the vendor homepage
  url "https://bitbucket.org/zorgiepoo/bit-slicer/downloads/Bit%20Slicer%20#{version}.zip"
  name 'Bit Slicer'
  appcast 'http://zorg.tejat.net/bitslicer/update.php',
          :sha256 => '2dca07d414e8888b06c0354fe4b381e91ff0945b381081db8f32bc0563d3b51e'
  homepage 'https://github.com/zorgiepoo/bit-slicer/'
  license :bsd

  app 'Bit Slicer.app'
end
