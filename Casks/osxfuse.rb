class Osxfuse < Cask
  version '2.7.1'
  sha256 'fa7819c3d20c207ac51f25d3db2e0705dde52e8cf91e42e9aead83aa4fadf375'

  url "https://downloads.sourceforge.net/project/osxfuse/osxfuse-#{version}/osxfuse-#{version}.dmg"
  homepage 'https://osxfuse.github.io/'
  license :oss

  pkg "Install OSXFUSE #{version[0..-3]}.pkg"
  uninstall :pkgutil => 'com.github.osxfuse.pkg.Core|com.github.osxfuse.pkg.PrefPane',
            :kext => 'com.github.osxfuse.filesystems.osxfusefs'
end
