cask 'nagstamon' do
  version '3.0.1'
  sha256 '3c99264e6665d0a8866ce1392a34432c596839732b7de1dfed30139dbf3850fa'

  # github.com/HenriWahl/Nagstamon was verified as official when first introduced to the cask
  url "https://github.com/HenriWahl/Nagstamon/releases/download/#{version}/Nagstamon.#{version}.dmg"
  appcast 'https://github.com/HenriWahl/Nagstamon/releases.atom',
          checkpoint: 'cae04f1f3195434c1f84dca7e4f6ed90676883b552483eb1f754c02a5c19ec08'
  name 'Nagstamon'
  homepage 'https://nagstamon.ifw-dresden.de/'

  app 'Nagstamon.app'

  zap trash: '~/.nagstamon'
end
