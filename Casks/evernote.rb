cask 'evernote' do
  if MacOS.version <= :snow_leopard
    version '5.5.2'
    sha256 '06b6da6d74ccab08deabfdd4c9519b9bc7f7ef0f0db2a0e8b0cd72e781f2e0ed'
    url 'https://cdn1.evernote.com/mac/release/Evernote_402634.dmg'
  else
    version '6.11_454874'
    sha256 'f609716be18ef3f76817118bb322b2244d2114f99bf95406dcabb4a1c55c3831'
    url "https://cdn1.evernote.com/mac-smd/public/Evernote_RELEASE_#{version}.dmg"
    appcast 'https://update.evernote.com/public/ENMacSMD/EvernoteMacUpdate.xml',
            checkpoint: '38cad0bc5030be3556e257e348a510acd1b1a21abdc4e8899cf91a90d21357b6'
  end

  name 'Evernote'
  homepage 'https://evernote.com/'

  auto_updates true

  app 'Evernote.app'
end
