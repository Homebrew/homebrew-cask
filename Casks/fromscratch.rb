cask 'fromscratch' do
  version '1.4.1'
  sha256 'af8bf3220c6b89527b27d84ac5b15cdadef3b02f4bd1c55f35a84c05b661329f'

  # github.com/Kilian/fromscratch was verified as official when first introduced to the cask
  url "https://github.com/Kilian/fromscratch/releases/download/v#{version}/FromScratch-#{version}.dmg"
  appcast 'https://github.com/Kilian/fromscratch/releases.atom'
  name 'FromScratch'
  homepage 'https://fromscratch.rocks/'

  app 'FromScratch.app'
end
