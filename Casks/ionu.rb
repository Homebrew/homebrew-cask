cask 'ionu' do
  version :latest
  sha256 :no_check

  url 'https://prod1.ionu.com/release/OSX/IONU.dmg'
  name 'IONU'
  homepage 'https://ionu.com'

  app 'IONU.app'
end
