cask 'eiskaltdcpp' do
  version '2.2.10-272-macOS10.11'
  sha256 '2e356d95e7768d46da536a47fb51a4f0603b67cd1191ab07d24d4121cc4e5ce6'

  url "https://downloads.sourceforge.net/eiskaltdcpp/EiskaltDC++-#{version}-x86_64.dmg"
  appcast 'https://sourceforge.net/projects/eiskaltdcpp/rss'
  name 'EiskaltDC++'
  homepage 'https://sourceforge.net/projects/eiskaltdcpp/'

  app 'EiskaltDC++.app'
end
