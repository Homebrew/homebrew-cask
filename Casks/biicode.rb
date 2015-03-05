cask :v1 => 'biicode' do
  version '2.4.1'
  sha256 '8afd2ffa872d8749a5719a8b12f4e4e71e68f1bc7543668a6babd230845eef05'

  # amazonaws is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/biibinaries/release/#{version}/bii-macos-64_#{version.gsub('.', '_')}.pkg"
  name 'Biicode'
  homepage 'http://www.biicode.com'
  license :closed

  pkg "bii-macos-64_#{version.gsub('.', '_')}.pkg"

  uninstall :pkgutil => 'biicode'
end
