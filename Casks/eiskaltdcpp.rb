cask 'eiskaltdcpp' do
  version '2.3.0-v2.2.10-62-ge42c04e'
  sha256 '1463fd447ffd16d9f3af96b0d2306a728d580e59bc7b9a45fcbe895c99c5432c'

  url "http://downloads.sourceforge.net/sourceforge/eiskaltdcpp/EiskaltDC++-#{version}-x86_64-qt5.dmg"
  name 'EiskaltDC++'
  homepage 'http://sourceforge.net/projects/eiskaltdcpp/'
  license :gpl

  app 'EiskaltDC++.app'
end
