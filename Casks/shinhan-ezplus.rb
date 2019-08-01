cask 'shinhan-ezplus' do
  version :latest
  sha256 :no_check

  url 'https://image.shinhan.com/nexhpe/document/ezplusmac.zip'
  name 'Shinhan ezPlus'
  homepage 'https://main.shinhan.com/hpe/index.jsp#040201040200'

  pkg 'SHBEzPlusMac.pkg'

  uninstall pkgutil: 'com.mygreatcompany.pkg.SHBEzPlusMac'
end
