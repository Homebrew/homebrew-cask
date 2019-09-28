cask 'context-free' do
  version '3.2'
  sha256 '2cfe1390315311da42524e4d5ac8b954c3c7698972e11037dad28410e5a57761'

  url "https://www.contextfreeart.org/download/ContextFree#{version}.dmg"
  appcast 'https://github.com/MtnViewJohn/context-free/releases.atom'
  name 'Context Free'
  homepage 'https://www.contextfreeart.org/'

  app 'Context Free.app'
end
