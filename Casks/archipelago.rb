cask 'archipelago' do
  version '3.0.3'
  sha256 'a0337f45d124422bacae24e655ecef88769717db2edf88f62cd88f3ca7573e3c'

  url "https://github.com/npezza93/archipelago/releases/download/v#{version}/Archipelago-#{version}.dmg"
  appcast 'https://github.com/npezza93/archipelago/releases.atom'
  name 'Archipelago'
  homepage 'https://github.com/npezza93/archipelago'

  app 'Archipelago.app'
end
