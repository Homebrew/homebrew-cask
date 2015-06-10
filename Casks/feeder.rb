cask :v1 => 'feeder' do
  version '2.5.11'
  sha256 'a96ab6ac338dda2d8d5ad3995e99d6610eabfa724fed086bb9a593d712425e53'

  url "http://reinventedsoftware.com/feeder/downloads/Feeder_#{version}.dmg"
  appcast 'http://reinventedsoftware.com/feeder/downloads/Feeder25.xml',
          :sha256 => '4cdf660c101c75d174934e26726e4d7555f1cc1ffd0dcce757acfe0fce30c5eb'
  name 'Feeder'
  homepage 'http://reinventedsoftware.com/feeder/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Feeder.app'
end
