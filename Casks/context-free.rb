cask 'context-free' do
  version '3.2'
  sha256 '506fc01ac271ee0e4157605201578aedb1ea81e82f1bd9c7fa240ca60cb1bee8'

  url "https://www.contextfreeart.org/download/ContextFree#{version}.dmg"
  appcast 'https://github.com/MtnViewJohn/context-free/releases.atom'
  name 'Context Free'
  homepage 'https://www.contextfreeart.org/'

  app 'Context Free.app'
end
