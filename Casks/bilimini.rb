cask 'bilimini' do
  version '1.4.1'
  sha256 '9ef45dfffaeefd271e2aa75cc1e7b8fac1fe912631ba012fe54cb2dcd886b74e'

  url "https://github.com/chitosai/bilimini/releases/download/v#{version}/bilimini-#{version}-mac.zip"
  appcast 'https://github.com/chitosai/bilimini/releases.atom'
  name 'bilimini'
  homepage 'https://github.com/chitosai/bilimini'

  auto_updates true

  app 'bilimini.app'
end
