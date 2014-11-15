cask :v1 => 'biicode' do
  version '1.10.1'
  sha256 'd7d040c7f39618d032620dbc6011cdc824443e93c2c6a6528e263c4351656de1'

  # amazonaws is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/biibinaries/release/#{version}/bii-macos-64_#{version.gsub('.', '_')}.pkg"
  homepage 'http://www.biicode.com'
  license :closed

  pkg "bii-macos-64_#{version.gsub('.', '_')}.pkg"
  uninstall :pkgutil => 'biicode'
end
