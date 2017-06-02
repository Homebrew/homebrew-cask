cask 'eiskaltdcpp' do
  version '2.3.0-v2.2.10-62-ge42c04e'
  sha256 '1463fd447ffd16d9f3af96b0d2306a728d580e59bc7b9a45fcbe895c99c5432c'

  url "https://downloads.sourceforge.net/eiskaltdcpp/EiskaltDC++-#{version}-x86_64-qt5.dmg"
  appcast 'https://sourceforge.net/projects/eiskaltdcpp/rss',
          checkpoint: '70a68d8316c37dbd3ed23be4aa4319d9d876a190d0206f037c629cd77bf88485'
  name 'EiskaltDC++'
  homepage 'https://sourceforge.net/projects/eiskaltdcpp/'

  app 'EiskaltDC++.app'
end
