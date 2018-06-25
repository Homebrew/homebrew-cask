cask 'cracked' do
  version '0.1.7'
  sha256 'd439497ec38f685ceaeaf6093d8f2e21a0028a318d8a206953eaf6575d75a432'

  url "https://github.com/billorcutt/Cracked/releases/download/#{version}-Release/Cracked.dmg"
  appcast 'https://github.com/billorcutt/Cracked/releases.atom'
  name 'Cracked'
  homepage 'https://github.com/billorcutt/Cracked'

  app 'Cracked.app'
end
