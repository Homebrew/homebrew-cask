cask :v1 => 'gureumkim' do
  version '1.8.9c'
  sha256 'f0e69d60ac57b83f475313b2e38ca42c06b3d46cfec69ef77a274a89695ff9ae'

  url "https://github.com/gureum/gureum/releases/download/GureumKIM-#{version.delete('a-z')}/GureumKIM-#{version}.pkg"
  appcast 'https://github.com/gureum/gureum/releases.atom'
  name '구름 입력기'
  homepage 'http://gureum.io'
  license :oss

  pkg "GureumKIM-#{version}.pkg"

  uninstall :pkgutil => 'org.youknowone.inputmethod.Gureum'
end
