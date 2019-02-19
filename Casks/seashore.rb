cask 'seashore' do
  version '2.4.0'
  sha256 '10a76f0a5a31c0f828503919805b8878b392a30c96bfd88f35fb4a86c834554c'

  url "https://github.com/robaho/seashore/releases/download/v#{version}/seashore-bin-#{version}.dmg"
  appcast 'https://github.com/robaho/seashore/releases.atom'
  name 'Seashore'
  homepage 'https://github.com/robaho/seashore'

  app 'Seashore.app'
end
