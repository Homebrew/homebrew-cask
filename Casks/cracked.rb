cask 'cracked' do
  version '0.1.10'
  sha256 '5992a057a2805b2023c5ee9fbe22abf64e919694398c7083512f3cd1c16a32c4'

  url "https://github.com/billorcutt/Cracked/releases/download/#{version}/Cracked.dmg"
  appcast 'https://github.com/billorcutt/Cracked/releases.atom'
  name 'Cracked'
  homepage 'https://github.com/billorcutt/Cracked'

  app 'Cracked.app'
end
