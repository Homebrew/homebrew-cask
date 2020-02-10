cask 'komodo-ide' do
  version '12.0.0,91824'
  sha256 '361abef403feaf8f00f504ea8fdbd1d587c1ce720d640493d233868fb58aeb61'

  url "https://downloads.activestate.com/Komodo/releases/#{version.before_comma}/Komodo-IDE-#{version.before_comma}-#{version.after_comma}-macosx-x86_64.dmg"
  appcast 'https://www.activestate.com/komodo-ide/downloads/ide'
  name 'Komodo IDE'
  homepage 'https://www.activestate.com/komodo-ide/'

  app "Komodo IDE #{version.major}.app"
end
