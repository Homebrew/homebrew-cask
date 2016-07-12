cask 'marp' do
  version '0.0.8'
  sha256 '6db7310232bf9abb4629f5a1600ebb9b912ffd750aa44eeaaa7c7ebdf5f563c6'

  url 'https://github.com/yhatt/marp/releases/download/v0.0.8/0.0.8-Marp-darwin-x64.dmg'
  name 'Marp'
  homepage 'https://yhatt.github.io/marp/'
  license :mit

  app 'Marp.app'
end
