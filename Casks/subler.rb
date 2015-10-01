cask :v1 => 'subler' do
  version '1.0.2'
  sha256 'db1413966e60a2b51528a8e312bb082f40aaf3c9e34a985387f3a163dfaa6294'

  # bitbucket.org is the official download host per the vendor homepage
  url "https://bitbucket.org/galad87/subler/downloads/Subler-#{version}.zip"
  appcast 'http://subler.org/appcast/appcast.xml',
          :sha256 => '438a1e7f9b4d6973c3bea76538ed2352b20d451dca30559e8b8393514a7ed95e'
  name 'Subler'
  homepage 'http://subler.org/'
  license :gpl

  app 'Subler.app'
end
