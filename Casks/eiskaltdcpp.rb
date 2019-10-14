cask 'eiskaltdcpp' do
  version '2.2.10-631-macOS10.12'
  sha256 '36708cc72ad9ffb36ac2cfcf42348f4a7bff72ebfb65df80825af934924e9f41'

  url "https://downloads.sourceforge.net/eiskaltdcpp/EiskaltDC++-#{version}-x86_64.dmg"
  appcast 'https://sourceforge.net/projects/eiskaltdcpp/rss'
  name 'EiskaltDC++'
  homepage 'https://sourceforge.net/projects/eiskaltdcpp/'

  app 'EiskaltDC++.app'
end
