cask 'fromscratch' do
  version '1.3.0'
  sha256 'a3621940ae0eaafe7fdcabe038a027ffa6c609f8764e74edbfa91d24e419e960'

  # github.com/Kilian/fromscratch was verified as official when first introduced to the cask
  url "https://github.com/Kilian/fromscratch/releases/download/v#{version}/FromScratch-darwin-x64-#{version}.zip"
  appcast 'https://github.com/Kilian/fromscratch/releases.atom'
  name 'FromScratch'
  homepage 'https://fromscratch.rocks/'

  app 'FromScratch.app'
end
