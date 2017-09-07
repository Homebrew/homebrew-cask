cask 'context-free' do
  version '3.0.11.3'
  sha256 '5baae1cf7487ea0902f781f0891d3f7dc2c01071ab9546a1e2523676ea45c0da'

  url "http://www.contextfreeart.org/download/ContextFree#{version}.dmg"
  appcast 'https://github.com/MtnViewJohn/context-free/releases.atom',
          checkpoint: '54b9e3003e60d4ae9ad25ba74a4fa0b78f6837d4a28adb55cfe078c103c81e3f'
  name 'Context Free'
  homepage 'https://www.contextfreeart.org/'

  app 'Context Free.app'
end
