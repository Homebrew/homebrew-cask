cask 'archipelago' do
  version '2.3.2'
  sha256 'c2eda8f6e0e63d0592ba94dc3969ddbee592f8035e162c05be345e32873be3a6'

  url 'https://github.com/npezza93/archipelago/releases/download/v2.3.2/Archipelago-2.3.2.dmg'
  appcast 'https://github.com/npezza93/archipelago/releases.atom'
  name 'Archipelago'
  homepage 'https://github.com/npezza93/archipelago'

  app 'Archipelago.app'
end
