cask 'bilimini' do
  version '1.3.0'
  sha256 '2a4dca57927a58d8f797347324730065a554fdf147d1e0746e72f4da5f0c244d'

  url "https://github.com/chitosai/bilimini/releases/download/v#{version}/bilimini-#{version}-mac.zip"
  appcast 'https://github.com/chitosai/bilimini/releases.atom'
  name 'bilimini'
  homepage 'https://github.com/chitosai/bilimini'

  auto_updates true

  app 'mac/bilimini.app'
end
