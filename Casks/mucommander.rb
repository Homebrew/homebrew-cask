cask 'mucommander' do
  version '0.9.4,2'
  sha256 '8f7aaf9734386506b0c4b10ac36c06c31b2b90d45747d250218b256aac35e352'

  # github.com/mucommander/mucommander was verified as official when first introduced to the cask
  url "https://github.com/mucommander/mucommander/releases/download/#{version.before_comma}-#{version.after_comma}/mucommander-#{version.before_comma}.dmg"
  appcast 'https://github.com/mucommander/mucommander/releases.atom'
  name 'muCommander'
  homepage 'https://www.mucommander.com/'

  app 'muCommander.app'
end
