cask :v1 => 'biicode' do
  version '2.3'
  sha256 '70488418612664a80a5d4c64b8c8ad3b02fa89c111e5b8af9a454dca1546741b'

  # amazonaws is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/biibinaries/release/#{version}/bii-macos-64_#{version.gsub('.', '_')}.pkg"
  name 'Biicode'
  homepage 'http://www.biicode.com'
  license :closed

  pkg "bii-macos-64_#{version.gsub('.', '_')}.pkg"

  uninstall :pkgutil => 'biicode'
end
