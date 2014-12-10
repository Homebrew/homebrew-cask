cask :v1 => 'openzfs' do
  version '1.3.0'
  sha256 'a0030181a91ecace2d31cfab26d10b2284602e2b442f71a344a9da11165cb6c7'

  url "https://openzfsonosx.org/w/images/0/0d/OpenZFS_on_OS_X_#{version}.dmg"
  homepage 'https://openzfsonosx.org'
  license :unknown    # todo: improve this machine-generated value

  pkg "OpenZFS on OS X #{version} Mavericks or higher.pkg"

  uninstall :pkgutil => 'net.lundman.openzfs.*'
end
