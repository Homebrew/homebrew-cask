cask 'bilimini' do
  version '1.4.2'
  sha256 '43cdb421868ad1a6f7c0ec555e914dd531267c6ffaa8853bdd022b66ac2400b7'

  url "https://github.com/chitosai/bilimini/releases/download/v#{version}/bilimini-#{version}-mac.zip"
  appcast 'https://github.com/chitosai/bilimini/releases.atom'
  name 'bilimini'
  homepage 'https://github.com/chitosai/bilimini'

  auto_updates true

  app 'bilimini.app'
end
