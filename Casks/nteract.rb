cask 'nteract' do
  version '0.11.4'
  sha256 'e055f6a6f2a9115d8cc18ce1a85e70819eb131407e710c50a92e99f33c9d9dd1'

  url "https://github.com/nteract/nteract/releases/download/v#{version}/nteract-#{version}.dmg"
  appcast 'https://github.com/nteract/nteract/releases.atom'
  name 'nteract'
  homepage 'https://github.com/nteract/nteract'

  app 'nteract.app'
end
