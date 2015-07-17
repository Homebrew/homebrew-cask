cask :v1 => 'feeder' do
  version '3.0'
  sha256 'f3d4a563f4d910be41b9c317eb8d5c7ea0090391c0e540353662c6d80668d186'

  url "http://reinventedsoftware.com/feeder/downloads/Feeder_#{version}.dmg"
  appcast 'http://reinventedsoftware.com/feeder/downloads/Feeder3.xml',
          :sha256 => '39cab93ae8f0614e187bd26637369e2fd236a686a20cca7a56113f8d13b09c74'
  name 'Feeder'
  homepage 'http://reinventedsoftware.com/feeder/'
  license :commercial

  app 'Feeder.app'
end
