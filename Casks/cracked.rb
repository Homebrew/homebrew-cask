cask 'cracked' do
  version '0.2.12'
  sha256 '7c57781085c901df9e67368a72c8fe93883fe4657ed92b8ef22d7338df981dae'

  url "https://github.com/billorcutt/Cracked/releases/download/#{version}/Cracked.dmg"
  appcast 'https://github.com/billorcutt/Cracked/releases.atom'
  name 'Cracked'
  homepage 'https://github.com/billorcutt/Cracked'

  app 'Cracked.app'
end
