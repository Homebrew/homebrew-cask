class Osxfuse < Cask
  url 'http://downloads.sourceforge.net/project/osxfuse/osxfuse-2.6.1/osxfuse-2.6.1.dmg'
  homepage 'http://osxfuse.github.io/'
  version '2.6.1'
  sha1 '2e43a6593aee5fa45166b8abc70ad054a83d083b'
  install 'Install OSXFUSE 2.6.pkg'
  uninstall :pkgutil => 'com.github.osxfuse.pkg.Core|com.github.osxfuse.pkg.PrefPane'
end
