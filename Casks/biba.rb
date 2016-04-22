cask 'biba' do
  version '3.11.3891'
  sha256 '875f6ab66d27f7650139716c0c65505d6f009f22d0c835c250a1a76384695b19'

  # amazonaws.com/downloads.biba.com was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/downloads.biba.com/builds/Biba-OSX-#{version}.dmg"
  appcast 'https://api.biba.com/osx_downloads/appcast',
          checkpoint: '4447cdca98d92db56e3dfb2f94674fbccf5dc34e487eb677d860d486dc068d0c'
  name 'Biba'
  homepage 'https://www.biba.com'
  license :closed

  app 'Biba.app'
end
