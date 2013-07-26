class Osxfuse < Cask
  url 'http://downloads.sourceforge.net/project/osxfuse/osxfuse-2.6.0/osxfuse-2.6.0.dmg'
  homepage 'http://osxfuse.github.io/'
  version '2.6.0'
  sha1 'dc267c2e64fa49e5ea6cffd79c762c216a6ef1df'
  install 'Install OSXFUSE 2.6.pkg'
  uninstall :pkgutil => 'com.github.osxfuse.pkg.Core'
end
