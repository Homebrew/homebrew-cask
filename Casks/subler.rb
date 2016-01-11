cask 'subler' do
  version '1.0.8'
  sha256 'ca4e5de56cddac494936916bfcf837cb4ab181bdcc1abcf1e6093699eaa514e4'

  # bitbucket.org is the official download host per the vendor homepage
  url "https://bitbucket.org/galad87/subler/downloads/Subler-#{version}.zip"
  appcast 'https://subler.org/appcast/appcast.xml',
          :sha256 => '521d5efab5192750dfdc6dad5fa3ee0a5a563ed4658fdcc9c640e5aa11202a45'
  name 'Subler'
  homepage 'https://subler.org/'
  license :gpl

  app 'Subler.app'

  zap :delete => [
                   '~/Library/Preferences/org.galad.Subler.plist',
                   '~/Library/Application Support/Subler',
                   '~/Library/Caches/org.galad.Subler',
                   '~/Library/Saved Application State/org.galad.Subler.savedState',
                 ]
end
