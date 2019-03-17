cask 'context-free' do
  version '3.1'
  sha256 '57e93777b37f14ad697964fd435a638ef17216503011ebf87b861958cd16ccc3'

  url "https://www.contextfreeart.org/download/ContextFree#{version}.dmg"
  appcast 'https://github.com/MtnViewJohn/context-free/releases.atom'
  name 'Context Free'
  homepage 'https://www.contextfreeart.org/'

  app 'Context Free.app'
end
