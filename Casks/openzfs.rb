cask 'openzfs' do
  version '1.5.2'
  sha256 '185d20242bacd14cd609ccfb8f89736e1ea0ca6dec6475fd9eb7703c17ab5413'

  url "https://openzfsonosx.org/w/images/6/6b/OpenZFS_on_OS_X_#{version}.dmg"
  name 'OpenZFS on OS X'
  homepage 'https://openzfsonosx.org'

  # OpenZFS on OS X has no version below Mountain Lion.
  if MacOS.version == :mountain_lion
    pkg "OpenZFS on OS X #{version.sub(%r{-.*}, '')} Mountain Lion.pkg"
  elsif MacOS.version == :mavericks
    pkg "OpenZFS on OS X #{version.sub(%r{-.*}, '')} Mavericks.pkg"
  elsif MacOS.version == :yosemite
    pkg "OpenZFS on OS X #{version.sub(%r{-.*}, '')} Yosemite.pkg"
  elsif MacOS.version >= :el_capitan
    pkg "OpenZFS on OS X #{version.sub(%r{-.*}, '')} El Capitan or higher.pkg"
  end

  uninstall pkgutil: 'net.lundman.openzfs.*'
end
