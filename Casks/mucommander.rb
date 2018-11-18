cask 'mucommander' do
  version '0.9.3'
  sha256 'cb74e0f857ff5bac804be0548e331de0dbfb9fa74acf948a095bdf2b256a4b34'

  # github.com/mucommander/mucommander was verified as official when first introduced to the cask
  url "https://github.com/mucommander/mucommander/releases/download/#{version}/mucommander-#{version}.dmg"
  appcast 'https://github.com/mucommander/mucommander/releases.atom'
  name 'muCommander'
  homepage 'https://www.mucommander.com/'

  depends_on java: '1.8'

  app 'muCommander.app'
end
