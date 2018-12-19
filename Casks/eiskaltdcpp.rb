cask 'eiskaltdcpp' do
  version '2.2.10-280-macOS10.11'
  sha256 'd9b900587e165e49192e6ce31992f39a335839371b9e76f250c6f323dde286bd'

  url "https://downloads.sourceforge.net/eiskaltdcpp/EiskaltDC++-#{version}-x86_64.dmg"
  appcast 'https://sourceforge.net/projects/eiskaltdcpp/rss'
  name 'EiskaltDC++'
  homepage 'https://sourceforge.net/projects/eiskaltdcpp/'

  app 'EiskaltDC++.app'
end
