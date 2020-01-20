cask 'nuclear' do
  version '0.6.1,6fa42c'
  sha256 '56ec866ee40ef3dd472223c85040ce769e235c794b1f55b49aa50da58e00f35d'

  # github.com/nukeop/nuclear was verified as official when first introduced to the cask
  url "https://github.com/nukeop/nuclear/releases/download/v#{version.before_comma}/nuclear-#{version.after_comma}.dmg"
  appcast 'https://github.com/nukeop/nuclear/releases.atom'
  name 'Nuclear'
  homepage 'https://nuclear.js.org/'

  app 'nuclear.app'
end
