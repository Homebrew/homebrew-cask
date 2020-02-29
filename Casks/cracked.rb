cask 'cracked' do
  version '0.2.13'
  sha256 'e564ea4701f791b2176b45c933714b3c78915dce14b83df419b5216dfaf1ab9b'

  url "https://github.com/billorcutt/Cracked/releases/download/#{version}/Cracked.dmg"
  appcast 'https://github.com/billorcutt/Cracked/releases.atom'
  name 'Cracked'
  homepage 'https://github.com/billorcutt/Cracked'

  app 'Cracked.app'
end
