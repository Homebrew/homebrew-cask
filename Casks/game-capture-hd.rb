cask :v1 => 'game-capture-hd' do
  version '2.0.1_941'
  sha256 '0db1d5322b0f57a113452fab01cfa28c4bd379332f99844ec738e47824f65370'

  url "http://files.elgato.com/gamecapture/gchdm_#{version.delete('.')}.dmg"
  name 'Game Capture HD'
  appcast 'http://updates.elgato.com/autoupdate/gameCapture20.rss?lang=English',
          :sha256 => '619d5f609fdcee62b97d246e533557a31ce7e32735d4a4a11e5e6a4d09f6a59b'
  homepage 'https://www.elgato.com/en/gaming/gamecapture-hd'
  license :commercial

  app 'Game Capture HD.app'
end
