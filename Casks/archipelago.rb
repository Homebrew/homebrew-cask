cask 'archipelago' do
  version '3.4.0'
  sha256 'b44ff8911eadd692a9eabeafb3eed55700603bb44814d09c12dd6ae55e37a8e6'

  url "https://github.com/npezza93/archipelago/releases/download/v#{version}/Archipelago-#{version}.dmg"
  appcast 'https://github.com/npezza93/archipelago/releases.atom'
  name 'Archipelago'
  homepage 'https://github.com/npezza93/archipelago'

  app 'Archipelago.app'
end
