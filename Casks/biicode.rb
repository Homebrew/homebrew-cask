cask :v1 => 'biicode' do
  version '2.8'
  sha256 'eb7c2b0751e3ed2cb22af90a943a9bf4168b1469c33cef926bb186318be7f9d2'

  # amazonaws is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/biibinaries/release/#{version}/bii-macos-64_#{version.gsub('.', '_')}.pkg"
  name 'Biicode'
  homepage 'http://www.biicode.com'
  license :closed

  pkg "bii-macos-64_#{version.gsub('.', '_')}.pkg"

  uninstall :pkgutil => 'biicode'
end
