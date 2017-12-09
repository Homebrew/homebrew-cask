cask 'bitdock' do
  version 'v1.1'
  sha256 'df5ee64679b17759c63464524e49b8c9af6b099ce21cb86075a8f30172128eb0'

  url "https://github.com/chrisunderdown/bitdock/releases/download/#{version}/Bitdock.dmg"
  name 'Bitdock'
  homepage 'https://github.com/chrisunderdown/bitdock'

  app 'Bitdock.app'
end
