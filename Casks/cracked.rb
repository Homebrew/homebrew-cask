cask 'cracked' do
  version '0.1.6'
  sha256 '3e113bb4f1134e8a51711454f53cd8ecf0c129e78a81c217d439fb30c6146cb0'

  url "https://github.com/billorcutt/Cracked/releases/download/#{version}/Cracked.dmg"
  appcast 'https://github.com/billorcutt/Cracked/releases.atom',
          checkpoint: '80a81a52c0d580dbb4af5578b9d15366872d307c0f2aacae6b4ab48f051ee30f'
  name 'Cracked'
  homepage 'https://github.com/billorcutt/Cracked'

  app 'Cracked.app'
end
