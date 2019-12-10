cask 'nuclear' do
  version '0.5.1'
  sha256 'c2bad0a3d3f29250f1b40102acda588c798c3a198c3c454f9593afbce4271477'

  # github.com/nukeop/nuclear was verified as official when first introduced to the cask
  url "https://github.com/nukeop/nuclear/releases/download/v#{version}/nuclear-7e3bac.dmg"
  appcast 'https://github.com/nukeop/nuclear/releases.atom'
  name 'Nuclear'
  homepage 'https://nuclear.js.org/'

  app 'nuclear.app'
end
