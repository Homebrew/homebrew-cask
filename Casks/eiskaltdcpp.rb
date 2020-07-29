cask 'eiskaltdcpp' do
  version '2.2.10-664-macOS10.13'
  sha256 'e6cd7e2050e1e8744e2d97976f03c24fb74e8fedad873714b573a826bcbc8ded'

  url "https://downloads.sourceforge.net/eiskaltdcpp/EiskaltDC++-#{version}-x86_64.dmg"
  appcast 'https://sourceforge.net/projects/eiskaltdcpp/rss'
  name 'EiskaltDC++'
  homepage 'https://sourceforge.net/projects/eiskaltdcpp/'

  app 'EiskaltDC++.app'
end
