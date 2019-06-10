cask 'gureumkim' do
  version '1.10.0'
  sha256 '144f6625d95101a91fd176afd1ff4cf159d22b52cf522bdedba0b51097de2bbe'

  # github.com/gureum/gureum was verified as official when first introduced to the cask
  url "https://github.com/gureum/gureum/releases/download/#{version}/Gureum-#{version}.pkg"
  appcast 'https://github.com/gureum/gureum/releases.atom'
  name '구름 입력기'
  homepage 'http://gureum.io/'

  pkg "Gureum-#{version}.pkg"

  uninstall pkgutil: 'org.youknowone.inputmethod.Gureum'
end
