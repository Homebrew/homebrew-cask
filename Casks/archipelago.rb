cask 'archipelago' do
  version '3.3.0'
  sha256 'ecb5ef8895e68a30c4ba3e5dc75c75893c3d56c6baaa66687045f2bf61aa71e3'

  url "https://github.com/npezza93/archipelago/releases/download/v#{version}/Archipelago-#{version}.dmg"
  appcast 'https://github.com/npezza93/archipelago/releases.atom'
  name 'Archipelago'
  homepage 'https://github.com/npezza93/archipelago'

  app 'Archipelago.app'
end
