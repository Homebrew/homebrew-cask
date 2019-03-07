cask 'electrumsv' do
  version '1.1.2'
  sha256 'edb28bd165d12617daeb89b1a601e4eb31689e9cb658895b2e0501774cefd5e9'

  url "https://electrumsv.io/download/#{version}/ElectrumSV-#{version}.dmg"
  appcast 'https://github.com/electrumsv/electrumsv/releases.atom'
  name 'ElectrumSV'
  homepage 'https://electrumsv.io/'

  app 'ElectrumSV.app'
end
