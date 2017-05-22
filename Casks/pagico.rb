cask 'pagico' do
  version '8.7.2161'
  sha256 '0d0ebf19632dbb2a8279e04868fba42eed74ace7be1cdf9de47659b9a92d42bd'

  url "https://www.pagico.com/downloads/Pagico_Desktop_r#{version.patch}.dmg"
  name 'Pagico'
  homepage 'https://www.pagico.com/'

  depends_on macos: '>= :lion'

  pkg 'Install Pagico.pkg'

  uninstall pkgutil: 'com.pagico.*'
end
