cask 'eiskaltdcpp' do
  version '2.2.10-583-macOS10.12'
  sha256 'fb272380d0892116cfa3a8bfbd4ba746423e7102d1c8ee83f0c7d1c13bc62aad'

  url "https://downloads.sourceforge.net/eiskaltdcpp/EiskaltDC++-#{version}-x86_64.dmg"
  appcast 'https://sourceforge.net/projects/eiskaltdcpp/rss'
  name 'EiskaltDC++'
  homepage 'https://sourceforge.net/projects/eiskaltdcpp/'

  app 'EiskaltDC++.app'
end
