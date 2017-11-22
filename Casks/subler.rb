cask 'subler' do
  version '1.4.4'
  sha256 'b93feb24fa884fa60c0be66f5b0ecde4ebd1fcb815d0f57e5199ab43469832f7'

  # bitbucket.org/galad87/subler was verified as official when first introduced to the cask
  url "https://bitbucket.org/galad87/subler/downloads/Subler-#{version}.zip"
  appcast 'https://subler.org/appcast/appcast.xml',
          checkpoint: '8f4450dd1bfae079857c7dd7c7c096d59d1345c280b8bc6dbf2420bd66f43050'
  name 'Subler'
  homepage 'https://subler.org/'

  auto_updates true

  app 'Subler.app'

  zap trash: [
               '~/Library/Preferences/org.galad.Subler.plist',
               '~/Library/Application Support/Subler',
               '~/Library/Caches/org.galad.Subler',
               '~/Library/Saved Application State/org.galad.Subler.savedState',
             ]
end
