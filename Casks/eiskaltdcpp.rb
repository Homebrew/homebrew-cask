cask 'eiskaltdcpp' do
  version '2.3.0-v2.2.10-62-ge42c04e'
  sha256 '1463fd447ffd16d9f3af96b0d2306a728d580e59bc7b9a45fcbe895c99c5432c'

  url "https://downloads.sourceforge.net/eiskaltdcpp/EiskaltDC++-#{version}-x86_64-qt5.dmg"
  appcast 'https://sourceforge.net/projects/eiskaltdcpp/rss',
          checkpoint: 'b4fb28f10cc3fbd688aed28a882b31447f7deac8ce29a5300090b71a0e45b63c'
  name 'EiskaltDC++'
  homepage 'https://sourceforge.net/projects/eiskaltdcpp/'

  app 'EiskaltDC++.app'
end
