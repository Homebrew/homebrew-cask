cask 'eiskaltdcpp' do
  version '2.2.10-644-macOS10.12'
  sha256 '701f1f2d62c084114244350a831f880b0aaa4fbed3021ec159c4a066b7fa6ea1'

  url "https://downloads.sourceforge.net/eiskaltdcpp/EiskaltDC++-#{version}-x86_64.dmg"
  appcast 'https://sourceforge.net/projects/eiskaltdcpp/rss'
  name 'EiskaltDC++'
  homepage 'https://sourceforge.net/projects/eiskaltdcpp/'

  app 'EiskaltDC++.app'
end
