cask 'context-free' do
  version '3.0.11.3'
  sha256 '5baae1cf7487ea0902f781f0891d3f7dc2c01071ab9546a1e2523676ea45c0da'

  url "http://www.contextfreeart.org/download/ContextFree#{version}.dmg"
  appcast 'https://github.com/MtnViewJohn/context-free/releases.atom',
          checkpoint: '673ebd22da9d419065bb8f57dee7ba6e5d318df2d30875088d78fadb3710159b'
  name 'Context Free'
  homepage 'https://www.contextfreeart.org/'

  depends_on macos: '>= :lion'

  app 'Context Free.app'
end
