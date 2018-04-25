cask 'subler' do
  version '1.4.10'
  sha256 '41d5bc2469c795b100dcacdb3b235e72cc4aa089cc1950a0259a5dadacf55032'

  # bitbucket.org/galad87/subler was verified as official when first introduced to the cask
  url "https://bitbucket.org/galad87/subler/downloads/Subler-#{version}.zip"
  appcast 'https://subler.org/appcast/appcast.xml',
          checkpoint: '8ed3358629f9085410e52ba23340036b0692bd9b7f70cf291c225f151f35108c'
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
