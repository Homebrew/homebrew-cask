cask :v1 => 'biicode' do
  version '3.1.1'
  sha256 '235ba2b95f23c2c1ba3b21237b7500a0234ea807e564e9c26e91132c5670b023'

  # amazonaws is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/biibinaries/release/#{version}/bii-macos-64_#{version.gsub('.', '_')}.pkg"
  name 'Biicode'
  homepage 'http://www.biicode.com'
  license :closed

  pkg "bii-macos-64_#{version.gsub('.', '_')}.pkg"

  uninstall :pkgutil => 'biicode'
end
