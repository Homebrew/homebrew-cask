cask :v1 => 'openzfs' do
  version '1.4.2'
  sha256 '189fc9bfe231cf51b65dac2665cecb65f632979fd13bcafa3f4e3b486880237f'

  url "https://openzfsonosx.org/w/images/0/0f/OpenZFS_on_OS_X_#{version}.dmg"
  name 'OpenZFS on OS X'
  homepage 'https://openzfsonosx.org'
  license :oss

  # OpenZFS on OSX has no version below Mountain Lion.
  if MacOS.release == :mountain_lion
    pkg "OpenZFS on OS X #{version.sub(%r{-.*},'')} Mountain Lion.pkg"
  elsif MacOS.release == :mavericks
    pkg "OpenZFS on OS X #{version.sub(%r{-.*},'')} Mavericks.pkg"
  elsif MacOS.release >= :yosemite
    pkg "OpenZFS on OS X #{version.sub(%r{-.*},'')} Yosemite or higher.pkg"
  end

  uninstall :pkgutil => 'net.lundman.openzfs.*'
end
