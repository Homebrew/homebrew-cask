cask 'eiskaltdcpp' do
  version '2.2.10-645-macOS10.15'
  sha256 '0b6becbca58271e6371dd2f5aa05ec7a394ba0ce8bd9aa6285f529dd281a6ae6'

  url "https://downloads.sourceforge.net/eiskaltdcpp/EiskaltDC++-#{version}-x86_64.dmg"
  appcast 'https://sourceforge.net/projects/eiskaltdcpp/rss'
  name 'EiskaltDC++'
  homepage 'https://sourceforge.net/projects/eiskaltdcpp/'

  app 'EiskaltDC++.app'
end
