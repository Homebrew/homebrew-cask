cask :v1 => 'feeder' do
  version '2.5.11'
  sha256 '9e59b1c4a891a6d65636b32983f49ffb7e75ad5bc59a63c2b10206efed8fcdfe'

  url "http://reinventedsoftware.com/feeder/downloads/Feeder_#{version}.dmg"
  appcast 'http://reinventedsoftware.com/feeder/downloads/Feeder25.xml',
          :sha256 => '4d454364411c22a093e63e780e4026bb45a54bf1e7ab329a45a77b4c73020dc4'
  name 'Feeder'
  homepage 'http://reinventedsoftware.com/feeder/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Feeder.app'
end
