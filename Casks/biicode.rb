class Biicode < Cask
  version '1.10.1'
  sha256 'd7d040c7f39618d032620dbc6011cdc824443e93c2c6a6528e263c4351656de1'

  url 'https://s3.amazonaws.com/biibinaries/release/1.10.1/bii-macos-64_1_10_1.pkg'
  homepage 'http://www.biicode.com'
  license :closed

  pkg 'bii-macos-64_1_10_1.pkg'
  uninstall :pkgutil => 'biicode'
end

