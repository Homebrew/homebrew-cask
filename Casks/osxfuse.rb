class Osxfuse < Cask
  version '2.6.4'
  sha256 '942ca4ac026e4545b915308b01e6706be04483d48e1257664add37564122e4ca'

  url 'https://downloads.sourceforge.net/project/osxfuse/osxfuse-2.6.4/osxfuse-2.6.4.dmg'
  homepage 'http://osxfuse.github.io/'

  install 'Install OSXFUSE 2.6.pkg'
  uninstall :pkgutil => 'com.github.osxfuse.pkg.Core|com.github.osxfuse.pkg.PrefPane',
            :kext => 'com.github.osxfuse.filesystems.osxfusefs'
end
