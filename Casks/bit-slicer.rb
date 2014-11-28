cask :v1 => 'bit-slicer' do
  version '1.7.4'
  sha256 '02766dcb88e21b39b78c91718eff5547904ad121e55b89b5bc11846a0c7e6ed4'

  url "https://bitbucket.org/zorgiepoo/bit-slicer/downloads/Bit%20Slicer%20#{version}.zip"
  appcast 'http://zorg.tejat.net/bitslicer/update.php',
          :sha256 => '11d0afe33a4cbf65a8df4c4d323b150853a62b0cbfe77d36dc70b5113aeca631'
  homepage 'https://github.com/zorgiepoo/bit-slicer/'
  license :oss

  app 'Bit Slicer.app'
end
