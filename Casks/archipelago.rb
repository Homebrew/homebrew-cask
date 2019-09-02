cask 'archipelago' do
  version '3.7.1'
  sha256 '759fafeebc96ec1f1a9f9459a2dc882abfa3ca6b742824232dcbe7c7655a4910'

  url "https://github.com/npezza93/archipelago/releases/download/v#{version}/Archipelago-#{version}.dmg"
  appcast 'https://github.com/npezza93/archipelago/releases.atom'
  name 'Archipelago'
  homepage 'https://github.com/npezza93/archipelago'

  app 'Archipelago.app'
end
