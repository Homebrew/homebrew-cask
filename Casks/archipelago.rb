cask 'archipelago' do
  version '3.0.2'
  sha256 'b80edf78e024cc780c07f00df8af3fd212acce4326bbf3f573f3939807fe8709'

  url "https://github.com/npezza93/archipelago/releases/download/v#{version}/Archipelago-#{version}.dmg"
  appcast 'https://github.com/npezza93/archipelago/releases.atom'
  name 'Archipelago'
  homepage 'https://github.com/npezza93/archipelago'

  app 'Archipelago.app'
end
