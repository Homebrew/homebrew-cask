cask 'nagstamon' do
  version '2.0.1'
  sha256 'f4f89aee83592c3f6d0aa2453bede94a52fe9b8e5aebbea418c924c8784b2274'

  # github.com/HenriWahl/Nagstamon was verified as official when first introduced to the cask
  url "https://github.com/HenriWahl/Nagstamon/releases/download/#{version}/Nagstamon-#{version}.dmg"
  appcast 'https://github.com/HenriWahl/Nagstamon/releases.atom',
          checkpoint: '976107551883bf12bde9f40e9819997d5258ea91418d1bcb485178e3a052ac67'
  name 'Nagstamon'
  homepage 'https://nagstamon.ifw-dresden.de/'

  app "Nagstamon-#{version}.app"

  zap delete: '~/.nagstamon'
end
