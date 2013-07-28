class Gpgtools < Cask
  url 'https://s3.amazonaws.com/gpgtools/GPG%20Suite%20-%202013.07.27.dmg'
  homepage 'https://gpgtools.org/index.html'
  version '2013.07.27'
  sha1 '45976a228ca13447a4a366f1b9742e44807f9a6e'
  install 'Install.pkg'
  uninstall(
    :pkgutil => 'org.gpgtools.*'
  )
end
