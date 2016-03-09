cask 'nulloy' do
  version '0.8.2'
  sha256 '67acc5ada9b5245cda7da04456bc18ad6e9b49dbdcb1e2752ce988d4d3607b35'

  url "https://github.com/nulloy/nulloy/releases/download/#{version}/Nulloy-#{version}-x86_64.dmg"
  appcast 'https://github.com/nulloy/nulloy/releases.atom',
          checkpoint: '086275a938536614041c3aceb18bc294562b8ccba7eac4c189b90cc6c222214f'
  name 'Nulloy'
  homepage 'http://nulloy.com/'
  license :gpl

  app 'Nulloy.app'
end
