cask 'nteract' do
  version '0.12.3'
  sha256 '07e3dc243f11fb9bb7d87e2e518684dce59f1a66bcd5a6c2a7c5e4bfa4aa75d7'

  url "https://github.com/nteract/nteract/releases/download/v#{version}/nteract-#{version}.dmg"
  appcast 'https://github.com/nteract/nteract/releases.atom'
  name 'nteract'
  homepage 'https://github.com/nteract/nteract'

  app 'nteract.app'
end
