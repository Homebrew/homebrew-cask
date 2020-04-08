cask 'hand-mirror' do
  version '1.1.2'
  sha256 'da590bc7666646185e647c7ab53c28d007f37bd32360d3decf78729677ea798e'

  url "https://handmirror.app/Hand%20Mirror%20#{version}.dmg"
  appcast 'https://handmirror.app'
  name 'Hand Mirror'
  homepage 'https://handmirror.app/'

  app 'Hand Mirror.app'
end
