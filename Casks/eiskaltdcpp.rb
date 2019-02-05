cask 'eiskaltdcpp' do
  version '2.2.10-306-macOS10.12'
  sha256 '58776bdf990d13b6d496f34b4ea70268fd701cdd38c15700e7e64515307c681b'

  url "https://downloads.sourceforge.net/eiskaltdcpp/EiskaltDC++-#{version}-x86_64.dmg"
  appcast 'https://sourceforge.net/projects/eiskaltdcpp/rss'
  name 'EiskaltDC++'
  homepage 'https://sourceforge.net/projects/eiskaltdcpp/'

  app 'EiskaltDC++.app'
end
