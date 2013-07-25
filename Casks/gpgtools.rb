class Gpgtools < Cask
  url 'https://s3.amazonaws.com/gpgtools/GPGTools-2013.5.20.dmg'
  homepage 'https://gpgtools.org/index.html'
  version '2013.05.20'
  sha1 '9f9fea935b3ce90d8d04542a754b8778f82a8b1b'
  install 'GPGTools.pkg'
  uninstall(
    :pkgutil => 'org.gpgtools.*'
  )
end
