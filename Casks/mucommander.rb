cask 'mucommander' do
  version '0.9.3,3'
  sha256 '0d996b2d0351a167c4445cf0a01c857c7b972cd2f809bb6fe580bf8af1994257'

  # github.com/mucommander/mucommander was verified as official when first introduced to the cask
  url "https://github.com/mucommander/mucommander/releases/download/#{version.before_comma}-#{version.after_comma}/mucommander-#{version.before_comma}.dmg"
  appcast 'https://github.com/mucommander/mucommander/releases.atom'
  name 'muCommander'
  homepage 'https://www.mucommander.com/'

  app 'muCommander.app'
end
