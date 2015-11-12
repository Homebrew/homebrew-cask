cask :v1 => 'subler' do
  version '1.0.5'
  sha256 '273f16933b47e4418ab14f51373ca6e35d28da3f3a17587193e1890bdf961644'

  # bitbucket.org is the official download host per the vendor homepage
  url "https://bitbucket.org/galad87/subler/downloads/Subler-#{version}.zip"
  appcast 'http://subler.org/appcast/appcast.xml',
          :sha256 => '273f16933b47e4418ab14f51373ca6e35d28da3f3a17587193e1890bdf961644'
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
