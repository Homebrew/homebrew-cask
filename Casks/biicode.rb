cask 'biicode' do
  version '3.3'
  sha256 'ada000955e41d6267f61305d9744c75769e087b1972f8ae6d2c25cdb38960ea5'

  # amazonaws.com/biibinaries was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/biibinaries/release/#{version}/bii-macos-64_#{version.dots_to_underscores}.pkg"
  name 'Biicode'
  homepage 'https://biicode.github.io/biicode/'

  pkg "bii-macos-64_#{version.dots_to_underscores}.pkg"

  uninstall pkgutil: 'biicode'
end
