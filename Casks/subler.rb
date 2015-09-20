cask :v1 => 'subler' do
  version '1.0.1'
  sha256 'e0ba947e60a4b2668de332abf5af872cb6afc9c45cee9ef45172bb57f60fcbd0'

  # bitbucket.org is the official download host per the vendor homepage
  url "https://bitbucket.org/galad87/subler/downloads/Subler-#{version}.zip"
  appcast 'http://subler.org/appcast/appcast.xml',
          :sha256 => '0dea9d07e82830f7200a8d389f35bd4bcf8dd30ced9b8e1efb9c930dc38353ff'
  name 'Subler'
  homepage 'http://subler.org/'
  license :gpl

  app 'Subler.app'
end
