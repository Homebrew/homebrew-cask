cask 'banking4' do
  version :latest
  sha256 :no_check

  url 'https://subsembly.com/download/MacBanking.pkg'
  name 'Banking4'
  homepage 'https://subsembly.com/banking4.html'

  pkg 'MacBanking.pkg'

  uninstall pkgutil: 'com.Subsembly.Banking4X'
end
