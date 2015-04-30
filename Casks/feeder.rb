cask :v1 => 'feeder' do
  version '2.5.10'
  sha256 '5cad5a80990e9cd87376543cefa0a90fed1a9e48ba6450bf72ec8fc29a2b7fa1'

  url "http://reinventedsoftware.com/feeder/downloads/Feeder_#{version}.dmg"
  appcast 'http://reinventedsoftware.com/feeder/downloads/Feeder25.xml',
          :sha256 => '4cdf660c101c75d174934e26726e4d7555f1cc1ffd0dcce757acfe0fce30c5eb'
  name 'Feeder'
  homepage 'http://reinventedsoftware.com/feeder/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Feeder.app'
end
