cask 'hand-mirror' do
  version '1.1.1'
  sha256 '83e9cbb5903cd37d40e648f52c0800376e73c6107403a60bf6529a675868520f'

  url "https://handmirror.app/Hand%20Mirror%20#{version}.dmg"
  appcast 'https://handmirror.app'
  name 'Hand Mirror'
  homepage 'https://handmirror.app/'

  app 'Hand Mirror.app'
end
