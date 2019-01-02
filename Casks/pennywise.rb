cask 'pennywise' do
  version '0.6.3'
  sha256 'b80fe0af58748fbfe43a7d29dd302ffbc23a7883de89a66fc1ccc1649c3a4daa'

  url "https://github.com/kamranahmedse/pennywise/releases/download/v#{version}/Pennywise-#{version}.dmg"
  appcast 'https://github.com/kamranahmedse/pennywise/releases.atom'
  name 'Pennywise'
  homepage 'https://github.com/kamranahmedse/pennywise'

  app 'Pennywise.app'
end
