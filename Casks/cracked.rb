cask 'cracked' do
  version '0.2.11'
  sha256 'ccda0dae962e3eca20e544b2b2fe1e1963635230882610178f7f8256649c9247'

  url "https://github.com/billorcutt/Cracked/releases/download/#{version}/Cracked.dmg"
  appcast 'https://github.com/billorcutt/Cracked/releases.atom'
  name 'Cracked'
  homepage 'https://github.com/billorcutt/Cracked'

  app 'Cracked.app'
end
