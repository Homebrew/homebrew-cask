cask 'fromscratch' do
  version '1.4.0'
  sha256 '8cdfe9277c480fee3453ecfdd74cf5291be4574d3445ca46cfbad204395eecd5'

  # github.com/Kilian/fromscratch was verified as official when first introduced to the cask
  url "https://github.com/Kilian/fromscratch/releases/download/v#{version}/FromScratch-#{version}.dmg"
  appcast 'https://github.com/Kilian/fromscratch/releases.atom'
  name 'FromScratch'
  homepage 'https://fromscratch.rocks/'

  app 'FromScratch.app'
end
