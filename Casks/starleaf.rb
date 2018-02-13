cask 'starleaf' do
  version :latest
  sha256 :no_check

  url 'https://dl.starleaf.com/app/StarLeaf.pkg'
  name 'Starleaf'
  homepage 'https://www.starleaf.com/'

  auto_updates true

  pkg 'StarLeaf.pkg'

  uninstall pkgutil: 'com.starleaf.breeze2.mac'
end
