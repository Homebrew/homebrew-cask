cask :v1 => 'kamakiri' do
  version :latest
  sha256 :no_check

  url 'https://mochidev.com/appresources/downloads/Kamakiri%20Latest.zip'
  name 'Kamakiri'
  appcast 'https://mochidev.com/appresources/updates/kamakiridd.xml',
          :sha256 => 'cdaff5053910c08c9cf39d1e967c6581d157b564cac26a5f285f51d4ef6fae66'
  homepage 'https://mochidev.com/apps/kamakiri/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Kamakiri.app'
end
