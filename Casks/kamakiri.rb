cask 'kamakiri' do
  version '1.0.9-32'
  sha256 '5634ce3166f0f613490bae043a3ac4376c18f35a6066829f90ebc23b7ec44f4f'

  url "https://mochidev.com/appresources/downloads/Kamakiri%20#{version.sub(%r{-.*$}, '')}%20(#{version.sub(%r{^.*-}, '')}).zip"
  appcast 'https://mochidev.com/appresources/updates/kamakiridd.xml',
          :sha256 => 'b3f7fdf1557e3f988a036ac2d9ed0dc9b97d151c1a30cf90420bc20cd25d2e9a'
  name 'Kamakiri'
  homepage 'https://mochidev.com/apps/kamakiri/'
  license :commercial

  app 'Kamakiri.app'
end
