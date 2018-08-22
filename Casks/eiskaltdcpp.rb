cask 'eiskaltdcpp' do
  version '2.2.10-196-macOS10.13'
  sha256 '4d5a69e3c5eb4428ba0fa7dda8817203c5befabbb6c9f8b4e1124f19823adfcf'

  url "https://downloads.sourceforge.net/eiskaltdcpp/EiskaltDC++-#{version}-x86_64.dmg"
  appcast 'https://sourceforge.net/projects/eiskaltdcpp/rss'
  name 'EiskaltDC++'
  homepage 'https://sourceforge.net/projects/eiskaltdcpp/'

  app 'EiskaltDC++.app'
end
