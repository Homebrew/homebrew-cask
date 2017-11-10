cask 'nagstamon' do
  version '3.0.2'
  sha256 '824e4ceaf23d831a56df5ef95fef10d645c5db9bff4db380542a326b421a5b8a'

  # github.com/HenriWahl/Nagstamon was verified as official when first introduced to the cask
  url "https://nagstamon.ifw-dresden.de/files/stable/Nagstamon%20#{version}.dmg"
  appcast 'https://github.com/HenriWahl/Nagstamon/releases.atom',
          checkpoint: 'cae04f1f3195434c1f84dca7e4f6ed90676883b552483eb1f754c02a5c19ec08'
  name 'Nagstamon'
  homepage 'https://nagstamon.ifw-dresden.de/'

  app 'Nagstamon.app'

  zap trash: '~/.nagstamon'
end
