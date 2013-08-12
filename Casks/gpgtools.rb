class Gpgtools < Cask
  url 'https://s3.amazonaws.com/gpgtools/GPG%20Suite%20-%202013.08.06.dmg'
  homepage 'https://gpgtools.org/index.html'
  version '2013.08.06'
  sha1 '19ff2dbace8d9b28b9a71ada914d84c0ac7a41d0'
  install 'Install.pkg'
  uninstall(
    :pkgutil => 'org.gpgtools.*'
  )
end
