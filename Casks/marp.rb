cask 'marp' do
  version '0.0.8'
  sha256 '6db7310232bf9abb4629f5a1600ebb9b912ffd750aa44eeaaa7c7ebdf5f563c6'

  # github.com/yhatt/marp was verified as official when first introduced to the cask
  url "https://github.com/yhatt/marp/releases/download/v#{version}/#{version}-Marp-darwin-x64.dmg"
  appcast 'https://github.com/yhatt/marp/releases.atom',
          checkpoint: '377f8d38c817a6ffb293c6de539ae7f4cb309cb76244f0f872c43e8eb8625c29'
  name 'Marp'
  homepage 'https://yhatt.github.io/marp/'
  license :mit

  app 'Marp.app'
end
