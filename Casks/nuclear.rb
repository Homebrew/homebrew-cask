cask 'nuclear' do
  version '0.6.3,fca030'
  sha256 'ae4e3f599089bb484ac503547c8553517da0689a1f9d2515487bac174f4a0e4d'

  # github.com/nukeop/nuclear was verified as official when first introduced to the cask
  url "https://github.com/nukeop/nuclear/releases/download/v#{version.before_comma}/nuclear-#{version.after_comma}.dmg"
  appcast 'https://github.com/nukeop/nuclear/releases.atom'
  name 'Nuclear'
  homepage 'https://nuclear.js.org/'

  app 'nuclear.app'
end
