cask 'cross-web' do
  version :latest
  sha256 :no_check

  url 'https://open.citibank.co.kr/3rdParty/initech/plugin/down/npCrossWeb_Mac.pkg'
  name 'Cross WEB'
  homepage 'https://open.citibank.co.kr'
  license :gratis

  pkg 'npCrossWeb_Mac.pkg'

  uninstall pkgutil: 'kr.co.iniline.pkg.CrossWebPackage'
end
