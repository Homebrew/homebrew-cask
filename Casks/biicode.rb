cask 'biicode' do
  version '3.3'
  sha256 'ada000955e41d6267f61305d9744c75769e087b1972f8ae6d2c25cdb38960ea5'

  # amazonaws is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/biibinaries/release/#{version}/bii-macos-64_#{version.gsub('.', '_')}.pkg"
  name 'Biicode'
  homepage 'https://www.biicode.com/'
  license :closed

  pkg "bii-macos-64_#{version.gsub('.', '_')}.pkg"

  uninstall :pkgutil => 'biicode'
end
