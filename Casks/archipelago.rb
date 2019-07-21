cask 'archipelago' do
  version '3.5.1'
  sha256 '91d398d1c74dcf8fc0c030d289ee5019be8aa34b5f48eff141d20d11d6441db6'

  url "https://github.com/npezza93/archipelago/releases/download/v#{version}/Archipelago-#{version}.dmg"
  appcast 'https://github.com/npezza93/archipelago/releases.atom'
  name 'Archipelago'
  homepage 'https://github.com/npezza93/archipelago'

  app 'Archipelago.app'
end
