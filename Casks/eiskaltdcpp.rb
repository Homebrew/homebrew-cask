cask 'eiskaltdcpp' do
  version '2.2.10-389-macOS10.12'
  sha256 '99ffb7bde7ced57e76f32fb7519d61046ead2f31402a3208d22e6aebb9b7583c'

  url "https://downloads.sourceforge.net/eiskaltdcpp/EiskaltDC++-#{version}-x86_64.dmg"
  appcast 'https://sourceforge.net/projects/eiskaltdcpp/rss'
  name 'EiskaltDC++'
  homepage 'https://sourceforge.net/projects/eiskaltdcpp/'

  app 'EiskaltDC++.app'
end
