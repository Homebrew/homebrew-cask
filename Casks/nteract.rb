cask 'nteract' do
  version '0.11.2'
  sha256 '34c7b4385b854d7a9140bbf81bea5e9c543e9de92b96de3697d892df106226bf'

  url "https://github.com/nteract/nteract/releases/download/v#{version}/nteract-#{version}.dmg"
  appcast 'https://github.com/nteract/nteract/releases.atom'
  name 'nteract'
  homepage 'https://github.com/nteract/nteract'

  app 'nteract.app'
end
