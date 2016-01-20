cask 'kamakiri' do
  version '1.0.9-32'
  sha256 '5634ce3166f0f613490bae043a3ac4376c18f35a6066829f90ebc23b7ec44f4f'

  url "https://mochidev.com/appresources/downloads/Kamakiri%20#{version.sub(%r{-.*$}, '')}%20(#{version.sub(%r{^.*-}, '')}).zip"
  appcast 'https://mochidev.com/appresources/updates/kamakiridd.xml',
          checkpoint: 'a67664eb137f29dce44d5527d9a864f828e5734f9dcf7c8f0d8f551ddb249c78'
  name 'Kamakiri'
  homepage 'https://mochidev.com/apps/kamakiri/'
  license :commercial

  app 'Kamakiri.app'
end
