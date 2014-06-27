class Hubic < Cask
  version '0.2.5'
  sha256 '14a354a3029361b9f0c6560a6d702ce34e685da08361869bead7f87ec09a51df'

  url 'http://mir7.ovh.net/ovh-applications/hubic/hubiC-OSX/0.2.5/hubiC-OSX-0.2.5.224-osx.pkg'
  homepage 'https://hubic.com'

  install 'hubiC-OSX-0.2.5.224-osx.pkg'
  uninstall :pkgutil => 'com.ovh.hubicmac'
end
