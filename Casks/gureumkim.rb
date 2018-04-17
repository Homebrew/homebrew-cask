cask 'gureumkim' do
  version '1.9.0c'
  sha256 'eac1817137be39e0f36a9f2e2f0170c3eb3eeb6bf28ec25c5143c7de82a50050'

  # github.com/gureum/gureum was verified as official when first introduced to the cask
  url "https://github.com/gureum/gureum/releases/download/GureumKIM-#{version.delete('a-z')}/GureumKIM-#{version}.pkg"
  appcast 'https://github.com/gureum/gureum/releases.atom',
          checkpoint: '1fc78d534cc0f5fb120cb259137a7758a2a41b57e4e75229e286724c107f172c'
  name '구름 입력기'
  homepage 'http://gureum.io/'

  pkg "GureumKIM-#{version}.pkg"

  uninstall pkgutil: 'org.youknowone.inputmethod.Gureum'
end
