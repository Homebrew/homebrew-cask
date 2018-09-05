cask 'eiskaltdcpp' do
  version '2.2.10-228-macOS10.11'
  sha256 '045b17cdd530e229ab513df93d1011a549ea3567a9a533a4b145ced87ff020b4'

  url "https://downloads.sourceforge.net/eiskaltdcpp/EiskaltDC++-#{version}-x86_64.dmg"
  appcast 'https://sourceforge.net/projects/eiskaltdcpp/rss'
  name 'EiskaltDC++'
  homepage 'https://sourceforge.net/projects/eiskaltdcpp/'

  app 'EiskaltDC++.app'
end
