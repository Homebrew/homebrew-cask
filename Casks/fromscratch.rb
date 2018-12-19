cask 'fromscratch' do
  version '1.4.2'
  sha256 'd36f22484ae7074c99d6db51c7b59c2a7d1eeba784c3f4f07a6aff386036daab'

  # github.com/Kilian/fromscratch was verified as official when first introduced to the cask
  url "https://github.com/Kilian/fromscratch/releases/download/v#{version}/FromScratch-#{version}.dmg"
  appcast 'https://github.com/Kilian/fromscratch/releases.atom'
  name 'FromScratch'
  homepage 'https://fromscratch.rocks/'

  app 'FromScratch.app'
end
