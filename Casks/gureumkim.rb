cask 'gureumkim' do
  version '1.8.9c'
  sha256 'f0e69d60ac57b83f475313b2e38ca42c06b3d46cfec69ef77a274a89695ff9ae'

  # github.com/gureum/gureum was verified as official when first introduced to the cask
  url "https://github.com/gureum/gureum/releases/download/GureumKIM-#{version.delete('a-z')}/GureumKIM-#{version}.pkg"
  appcast 'https://github.com/gureum/gureum/releases.atom',
          checkpoint: '6078155196702a345bb4af91e78357288f113d5b639272a936708a3c9e0e7705'
  name '구름 입력기'
  homepage 'http://gureum.io/'

  pkg "GureumKIM-#{version}.pkg"

  uninstall pkgutil: 'org.youknowone.inputmethod.Gureum'
end
