class Osxfuse < Cask
  version '2.7.0'
  sha256 'fab4c8d16d0fc6995826d74f2c0ab04cd7264b00c566d5cc3b219bd589da8114'

  url "https://downloads.sourceforge.net/project/osxfuse/osxfuse-#{version}/osxfuse-#{version}.dmg"
  homepage 'https://osxfuse.github.io/'

  pkg "Install OSXFUSE #{version[0..-3]}.pkg"
  uninstall :pkgutil => 'com.github.osxfuse.pkg.Core|com.github.osxfuse.pkg.PrefPane',
            :kext => 'com.github.osxfuse.filesystems.osxfusefs'
end
