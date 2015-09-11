cask :v1 => 'subler' do
  version '0.31'
  sha256 'b9894827ae93ecd2e087cf333cd79f0a622ec4ac3a06737a418635e26940ca7a'

  # bitbucket.org is the official download host per the vendor homepage
  url "https://bitbucket.org/galad87/subler/downloads/Subler-#{version}.zip"
  appcast 'http://subler.org/appcast/appcast.xml',
          :sha256 => 'b8d659a84089c8ebd4969c7e5393b0472d844c79d43bad33cbfbbe153f2dfb51'
  name 'Subler'
  homepage 'http://subler.org/'
  license :gpl

  app 'Subler.app'
end
