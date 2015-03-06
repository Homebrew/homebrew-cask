cask :v1 => 'biicode' do
  version '2.5.2'
  sha256 'f0f95325811dfce7aa2b0df267b9cb6e074c4fef652ba8b310c58cfcd7d3f431'

  # amazonaws is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/biibinaries/release/#{version}/bii-macos-64_#{version.gsub('.', '_')}.pkg"
  name 'Biicode'
  homepage 'http://www.biicode.com'
  license :closed

  pkg "bii-macos-64_#{version.gsub('.', '_')}.pkg"

  uninstall :pkgutil => 'biicode'
end
