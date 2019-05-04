cask 'seashore' do
  version '2.4.2'
  sha256 '5de45c6ea299722a05d0a6984eba706901bc63b0d8f120bb3b8dc2bec616dd15'

  url "https://github.com/robaho/seashore/releases/download/v#{version}/seashore-bin-#{version}.dmg"
  appcast 'https://github.com/robaho/seashore/releases.atom'
  name 'Seashore'
  homepage 'https://github.com/robaho/seashore'

  app 'Seashore.app'
end
