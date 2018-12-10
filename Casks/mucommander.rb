cask 'mucommander' do
  version '0.9.3,1'
  sha256 '4bdc52fef2b9bc940320ea7c9fca9c8784bdfa0fdcda0ecb9c8b455f289e1f09'

  # github.com/mucommander/mucommander was verified as official when first introduced to the cask
  url "https://github.com/mucommander/mucommander/releases/download/#{version.before_comma}-#{version.after_comma}/mucommander-#{version.before_comma}.dmg"
  appcast 'https://github.com/mucommander/mucommander/releases.atom'
  name 'muCommander'
  homepage 'https://www.mucommander.com/'

  app 'muCommander.app'

  caveats do
    depends_on_java '8'
  end
end
