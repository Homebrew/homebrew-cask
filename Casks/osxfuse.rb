class Osxfuse < Cask
  url 'http://downloads.sourceforge.net/project/osxfuse/osxfuse-2.6.2/osxfuse-2.6.2.dmg'
  homepage 'http://osxfuse.github.io/'
  version '2.6.2'
  sha1 '44696348ccfb10d3e6a6514d73f090db6b69ee05'
  install 'Install OSXFUSE 2.6.pkg'
  uninstall :pkgutil => 'com.github.osxfuse.pkg.Core|com.github.osxfuse.pkg.PrefPane',
            :kext => 'com.github.osxfuse.filesystems.osxfusefs'
end
