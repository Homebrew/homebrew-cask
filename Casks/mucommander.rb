cask 'mucommander' do
  version '0.9.3,3'
  sha256 '17d3fdf19b14299e8edbe3bb1b4ec5629c100d9ffc5f702e736094a1a500354b'

  # github.com/mucommander/mucommander was verified as official when first introduced to the cask
  url "https://github.com/mucommander/mucommander/releases/download/#{version.before_comma}-#{version.after_comma}/mucommander-#{version.before_comma}.dmg"
  appcast 'https://github.com/mucommander/mucommander/releases.atom'
  name 'muCommander'
  homepage 'https://www.mucommander.com/'

  app 'muCommander.app'
end
