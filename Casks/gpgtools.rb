class Gpgtools < Cask
  url 'https://releases.gpgtools.org/GPG%20Suite%20-%202013.10.22.dmg'
  homepage 'https://gpgtools.org/index.html'
  version '2013.10.22'
  sha1 'ac7a636bfee1027d8f43a12a82eea54e7566dcb8'
  install 'Install.pkg'
  uninstall(
    :pkgutil => 'org.gpgtools.*'
  )
end
