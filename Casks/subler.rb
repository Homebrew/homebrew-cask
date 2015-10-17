cask :v1 => 'subler' do
  version '1.0.4'
  sha256 'f8e95ea92eef150246d3a2f3da0472e4ef53e2781ae2e4b9d5ad29c16f5bd40e'

  # bitbucket.org is the official download host per the vendor homepage
  url "https://bitbucket.org/galad87/subler/downloads/Subler-#{version}.zip"
  appcast 'http://subler.org/appcast/appcast.xml',
          :sha256 => 'f8e95ea92eef150246d3a2f3da0472e4ef53e2781ae2e4b9d5ad29c16f5bd40e'
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
