cask :v1 => 'epichrome' do
  version '2.1.6'
  sha256 '136f9cc1289510a33b572161bddf1ec3b1f1a7344e60bde3700bd208b6beaa3e'

  url "https://github.com/dmarmor/epichrome/releases/download/v#{version}/epichrome-#{version}.dmg"
  appcast 'https://github.com/dmarmor/epichrome/releases.atom'
  name 'Epichrome'
  homepage 'https://github.com/dmarmor/epichrome'
  license :gpl

  app 'Epichrome.app'
end
