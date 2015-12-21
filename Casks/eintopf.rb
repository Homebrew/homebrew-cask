cask 'eintopf' do
  version '1.1.1'
  sha256 '0458ac117c4a731c5e1b6e63c673376a2d78496d992f6d8b2ed9aef7bcfdd46d'

  # github is the official download host
  url "https://github.com/mazehall/eintopf/releases/download/#{version}/eintopf_#{version}-x64.dmg"
  name 'Eintopf'
  homepage 'https://eintopf.io'
  license :mit

  app 'Eintopf.app'
end
