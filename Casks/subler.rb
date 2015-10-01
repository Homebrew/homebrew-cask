cask :v1 => 'subler' do
  version '1.0.3'
  sha256 '631495e84b6dcda68e589b1c7172fb5ad6f41f76cbd73e3b739f25f741b1a1a6'

  # bitbucket.org is the official download host per the vendor homepage
  url "https://bitbucket.org/galad87/subler/downloads/Subler-#{version}.zip"
  appcast 'http://subler.org/appcast/appcast.xml',
          :sha256 => 'c2997d3e545fb02306552377ac6a3fd0dc25d7d9761465397982f2904aaf7876'
  name 'Subler'
  homepage 'http://subler.org/'
  license :gpl

  app 'Subler.app'
end
