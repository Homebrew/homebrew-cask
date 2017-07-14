cask 'context-free' do
  version '3.0.11.3'
  sha256 '5baae1cf7487ea0902f781f0891d3f7dc2c01071ab9546a1e2523676ea45c0da'

  url "http://www.contextfreeart.org/download/ContextFree#{version}.dmg"
  appcast 'https://github.com/MtnViewJohn/context-free/releases.atom',
          checkpoint: 'e870c4c9ad2c4e7dcd36b196f0008000a4f821cf6f86a55237067f37769f809b'
  name 'Context Free'
  homepage 'https://www.contextfreeart.org/'

  app 'Context Free.app'
end
