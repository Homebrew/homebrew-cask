cask :v1 => 'pagico' do
  version '7.1.1781'
  sha256 '17ddc8929540818aa7a7da7aa779b848f55c5db45c3a0e8d49703f16a7a3cc16'

  url "http://pagico.com/downloads/Pagico_Desktop_r#{version.split('.')[2]}.dmg"
  name 'Pagico'
  homepage 'http://pagico.com/'
  license :commercial

  pkg 'Install Pagico.pkg'

  uninstall :pkgutil => 'com.pagico.*',
            :delete => '/Applications/Pagico'
end
