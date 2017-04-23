cask 'eiskaltdcpp' do
  version '2.3.0-v2.2.10-62-ge42c04e'
  sha256 '59916ff385e2ee440a302740622f6d17f0fd006e446469c473cd09fcded794d5'

  url "https://downloads.sourceforge.net/eiskaltdcpp/EiskaltDC++-#{version}-x86_64-qt5.dmg"
  appcast 'https://sourceforge.net/projects/eiskaltdcpp/rss',
          checkpoint: '70a68d8316c37dbd3ed23be4aa4319d9d876a190d0206f037c629cd77bf88485'
  name 'EiskaltDC++'
  homepage 'https://sourceforge.net/projects/eiskaltdcpp/'

  app 'EiskaltDC++.app'
end
