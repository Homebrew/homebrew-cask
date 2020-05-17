cask 'kleiner-brauhelfer.app' do
  version '1.4.4.5'
  sha256 '802c915c4b5e74356ab22df5d34748dfa79c3c5490d5abfac6700fb3ef86676f'

  # github.com/realholgi/kleiner-brauhelfer was verified as official when first introduced to the cask
  url "https://github.com/realholgi/kleiner-brauhelfer/releases/download/v#{version}/kb_macos_v#{version.dots_to_underscores}.zip"
  appcast 'https://github.com/realholgi/kleiner-brauhelfer/releases.atom'
  name 'Kleiner Brauhelfer'
  homepage 'http://www.joerum.de/kleiner-brauhelfer/doku.php'

  app 'kleiner-brauhelfer.app'

  zap trash: 'brauhelfer.app'
end
