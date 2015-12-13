cask :v1 => 'subler' do
  version '1.0.6'
  sha256 '84e09cb84fd262c23b9ed61298ea98f1b6a611e4d355f8f95ed6a6890510b840'

  # bitbucket.org is the official download host per the vendor homepage
  url "https://bitbucket.org/galad87/subler/downloads/Subler-#{version}.zip"
  appcast 'http://subler.org/appcast/appcast.xml',
          :sha256 => '84e09cb84fd262c23b9ed61298ea98f1b6a611e4d355f8f95ed6a6890510b840'
  name 'Subler'
  homepage 'http://subler.org/'
  license :gpl

  app 'Subler.app'

  zap :delete => [
                  '~/Library/Preferences/org.galad.Subler.plist',
                  '~/Library/Application Support/Subler',
                  '~/Library/Caches/org.galad.Subler',
                  '~/Library/Saved Application State/org.galad.Subler.savedState'
                 ]
end
