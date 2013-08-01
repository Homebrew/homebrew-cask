class Gpgtools < Cask
  url 'https://s3.amazonaws.com/gpgtools/GPG%20Suite%20-%202013.07.31.dmg'
  homepage 'https://gpgtools.org/index.html'
  version '2013.07.31'
  sha1 '5390440f35b9ab1f7430d40b4906f9f0e47f9779'
  install 'Install.pkg'
  uninstall(
    :pkgutil => 'org.gpgtools.*'
  )
end
