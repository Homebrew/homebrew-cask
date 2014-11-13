cask :v1 => 'pagico' do
  version '6.8.1637'
  sha256 '55df590853906fe6590f6526b2f8c2663f90f4b76c5baf2976f722d203383ddd'

  url "http://pagico.com/downloads/Pagico_Desktop_r#{version.sub(%r{^.*\.},'')}.dmg"
  homepage 'http://pagico.com/'
  license :unknown

  pkg 'Install Pagico.pkg'
  uninstall :pkgutil => 'com.pagico.*',
            :delete => '/Applications/Pagico'
end
