cask 'eintopf' do
  version '1.1.1'
  sha256 '0458ac117c4a731c5e1b6e63c673376a2d78496d992f6d8b2ed9aef7bcfdd46d'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/mazehall/eintopf/releases/download/#{version}/eintopf_#{version}-x64.dmg"
  appcast 'https://github.com/mazehall/eintopf/releases.atom',
          :sha256 => 'ddc8eff06f0c72bad9dc3832f22eb5240cd187de0eb35b0bc6f4fdc33efbf1c8'
  name 'Eintopf'
  homepage 'https://eintopf.io'
  license :mit

  app 'Eintopf.app'
end
