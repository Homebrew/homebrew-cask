cask :v1 => 'feeder' do
  version '2.5.11'
  sha256 '9e59b1c4a891a6d65636b32983f49ffb7e75ad5bc59a63c2b10206efed8fcdfe'

  url "http://reinventedsoftware.com/feeder/downloads/Feeder_#{version}.dmg"
  appcast 'http://reinventedsoftware.com/feeder/downloads/Feeder25.xml',
          :sha256 => '4cdf660c101c75d174934e26726e4d7555f1cc1ffd0dcce757acfe0fce30c5eb'
  name 'Feeder'
  homepage 'http://reinventedsoftware.com/feeder/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Feeder.app'
end
