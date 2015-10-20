cask :v1 => 'kamakiri' do
  version '1.0.9-32'
  sha256 '5634ce3166f0f613490bae043a3ac4376c18f35a6066829f90ebc23b7ec44f4f'

  url "https://mochidev.com/appresources/downloads/Kamakiri%20#{version.sub(%r{-.*$},'')}%20(#{version.sub(%r{^.*-},'')}).zip"
  name 'Kamakiri'
  appcast 'https://mochidev.com/appresources/updates/kamakiridd.xml',
          :sha256 => 'cdaff5053910c08c9cf39d1e967c6581d157b564cac26a5f285f51d4ef6fae66'
  homepage 'https://mochidev.com/apps/kamakiri/'
  license :commercial

  app 'Kamakiri.app'
end
