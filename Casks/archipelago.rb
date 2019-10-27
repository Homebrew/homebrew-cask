cask 'archipelago' do
  version '3.8.0'
  sha256 '950fa9ea57742b356130e08df99cb32ef3b0812e73d50105de2ae1160f1fc06a'

  url "https://github.com/npezza93/archipelago/releases/download/v#{version}/Archipelago-#{version}.dmg"
  appcast 'https://github.com/npezza93/archipelago/releases.atom'
  name 'Archipelago'
  homepage 'https://github.com/npezza93/archipelago'

  app 'Archipelago.app'
end
