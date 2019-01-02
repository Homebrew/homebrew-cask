cask 'mucommander' do
  version '0.9.3,2'
  sha256 '2c5a16c5fff6d32763e901b32310a4e4e5e3cfc647b668e111a13197ed4be81c'

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
