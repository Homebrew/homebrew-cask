class Osxfuse < Cask
  url 'http://downloads.sourceforge.net/project/osxfuse/osxfuse-2.6.2/osxfuse-2.6.2.dmg'
  homepage 'http://osxfuse.github.io/'
  version '2.6.2'
  sha256 '01fa8b7ab50fe468758ddab66f4dee328fb77eef5dc111490b8f0e82b8684ff6'
  install 'Install OSXFUSE 2.6.pkg'
  uninstall :pkgutil => 'com.github.osxfuse.pkg.Core|com.github.osxfuse.pkg.PrefPane',
            :kext => 'com.github.osxfuse.filesystems.osxfusefs'
end
