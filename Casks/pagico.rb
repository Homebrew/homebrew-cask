cask :v1 => 'pagico' do
  version '7.1.1797'
  sha256 '1693cbc6995c5665646465eea9e9c23590b65e21722bc3f16c1392fb8b95eabb'

  url "https://www.pagico.com/downloads/Pagico_Desktop_r#{version.split('.')[2]}.dmg"
  name 'Pagico'
  homepage 'https://www.pagico.com/'
  license :commercial

  depends_on :macos => '>= :lion'

  pkg 'Install Pagico.pkg'

  uninstall :pkgutil => 'com.pagico.*',
            :delete => '/Applications/Pagico'
end
