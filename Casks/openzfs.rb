cask 'openzfs' do
  version '1.4.5'
  sha256 '9ad0b21bc54c5453a90427d478533f530ff9bb98744d17f2fcb127a81af18169'

  url "https://openzfsonosx.org/w/images/9/9f/OpenZFS_on_OS_X_#{version}.dmg"
  name 'OpenZFS on OS X'
  homepage 'https://openzfsonosx.org'
  license :oss

  # OpenZFS on OSX has no version below Mountain Lion.
  if MacOS.release == :mountain_lion
    pkg "OpenZFS on OS X #{version.sub(%r{-.*}, '')} Mountain Lion.pkg"
  elsif MacOS.release == :mavericks
    pkg "OpenZFS on OS X #{version.sub(%r{-.*}, '')} Mavericks.pkg"
  elsif MacOS.release == :yosemite
    pkg "OpenZFS on OS X #{version.sub(%r{-.*}, '')} Yosemite.pkg"
  elsif MacOS.release >= :el_capitan
    pkg "OpenZFS on OS X #{version.sub(%r{-.*}, '')} El Capitan or higher.pkg"
  end

  uninstall pkgutil: 'net.lundman.openzfs.*'
end
