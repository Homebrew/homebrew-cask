cask 'cracked' do
  version '1.7'
  sha256 'd439497ec38f685ceaeaf6093d8f2e21a0028a318d8a206953eaf6575d75a432'

  url "https://github.com/billorcutt/Cracked/releases/download/#{version}-Release/Cracked.dmg"
  appcast 'https://github.com/billorcutt/Cracked/releases.atom',
          checkpoint: 'c7ab0ef3793d74d78b5e74a2c5436ad373e78a077d49e5da109815791ef59984'
  name 'Cracked'
  homepage 'https://github.com/billorcutt/Cracked'

  app 'Cracked.app'
end
