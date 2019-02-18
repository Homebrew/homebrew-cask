cask 'eiskaltdcpp' do
  version '2.2.10-340-macOS10.12'
  sha256 'd179627a8e2b94f0e2e8ff600ebce59ce3347a37a544681d6fd2f9591c443412'

  url "https://downloads.sourceforge.net/eiskaltdcpp/EiskaltDC++-#{version}-x86_64.dmg"
  appcast 'https://sourceforge.net/projects/eiskaltdcpp/rss'
  name 'EiskaltDC++'
  homepage 'https://sourceforge.net/projects/eiskaltdcpp/'

  app 'EiskaltDC++.app'
end
