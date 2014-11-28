cask :v1 => 'biicode' do
  version '1.11'
  sha256 '1503ab2dd893434715795dce37abae2a8b305127be1fdd84ad142a396ff099fc'

  # amazonaws is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/biibinaries/release/#{version}/bii-macos-64_#{version.gsub('.', '_')}.pkg"
  homepage 'http://www.biicode.com'
  license :closed

  pkg "bii-macos-64_#{version.gsub('.', '_')}.pkg"

  uninstall :pkgutil => 'biicode'
end
