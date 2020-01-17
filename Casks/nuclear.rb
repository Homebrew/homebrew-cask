cask 'nuclear' do
  version '0.6.0,8595ed'
  sha256 '2ee17401b2c9b70402718d45e3469b5ca27eff65b51f5fe224c50372fc473f23'

  # github.com/nukeop/nuclear was verified as official when first introduced to the cask
  url "https://github.com/nukeop/nuclear/releases/download/v#{version.before_comma}/nuclear-#{version.after_comma}.dmg"
  appcast 'https://github.com/nukeop/nuclear/releases.atom'
  name 'Nuclear'
  homepage 'https://nuclear.js.org/'

  app 'nuclear.app'
end
