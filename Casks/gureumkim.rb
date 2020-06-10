cask 'gureumkim' do
  version '1.10.1'
  sha256 '792b605001e70ade496fdaf3d0ea07e811c586a64e27ced70436cc9d916d9512'

  # github.com/gureum/gureum/ was verified as official when first introduced to the cask
  url "https://github.com/gureum/gureum/releases/download/#{version}/Gureum-#{version}.pkg"
  appcast 'https://github.com/gureum/gureum/releases.atom'
  name '구름 입력기'
  homepage 'https://gureum.io/'

  pkg "Gureum-#{version}.pkg"

  uninstall pkgutil: 'org.youknowone.inputmethod.Gureum'
end
