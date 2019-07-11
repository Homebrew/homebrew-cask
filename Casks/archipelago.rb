cask 'archipelago' do
  version '3.5.0'
  sha256 '57b0e5e213eb99035237230fed779f3a7eae56cfc8f8015d260b0bf905b020e0'

  url "https://github.com/npezza93/archipelago/releases/download/v#{version}/Archipelago-#{version}.dmg"
  appcast 'https://github.com/npezza93/archipelago/releases.atom'
  name 'Archipelago'
  homepage 'https://github.com/npezza93/archipelago'

  app 'Archipelago.app'
end
