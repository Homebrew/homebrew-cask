cask :v1 => 'biicode' do
  version '2.2'
  sha256 'e5fefce0993e5e142c2bdb396f8da8c7683acedb0301680b79f278840e90de59'

  # amazonaws is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/biibinaries/release/#{version}/bii-macos-64_#{version.gsub('.', '_')}.pkg"
  name 'Biicode'
  homepage 'http://www.biicode.com'
  license :closed

  pkg "bii-macos-64_#{version.gsub('.', '_')}.pkg"

  uninstall :pkgutil => 'biicode'
end
