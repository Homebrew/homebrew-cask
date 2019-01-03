cask 'eiskaltdcpp' do
  version '2.2.10-284-macOS10.12'
  sha256 'a4d5fc1d73e97da8f1ad393094dd57cef0dffb38392b035ea64090597b5cf132'

  url "https://downloads.sourceforge.net/eiskaltdcpp/EiskaltDC++-#{version}-x86_64.dmg"
  appcast 'https://sourceforge.net/projects/eiskaltdcpp/rss'
  name 'EiskaltDC++'
  homepage 'https://sourceforge.net/projects/eiskaltdcpp/'

  app 'EiskaltDC++.app'
end
