cask 'eiskaltdcpp' do
  version '2.2.10-650-macOS10.13'
  sha256 '5d847111e1f8cfd3b8461c0f8bafea6e6f0f239e050f76e0f08470fd053aff64'

  url "https://downloads.sourceforge.net/eiskaltdcpp/EiskaltDC++-#{version}-x86_64.dmg"
  appcast 'https://sourceforge.net/projects/eiskaltdcpp/rss'
  name 'EiskaltDC++'
  homepage 'https://sourceforge.net/projects/eiskaltdcpp/'

  app 'EiskaltDC++.app'
end
