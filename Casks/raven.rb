cask 'raven' do
  version '0.2.0-alpha'
  sha256 '91792dfbe2abbc13f79bcafbe903e697f99b5abccfa900084b015e2c642eb633'

  # github.com/robotlolita/raven was verified as official when first introduced to the cask
  url "https://github.com/robotlolita/raven/releases/download/v#{version}/Raven-osx.zip"
  appcast 'https://github.com/robotlolita/raven/releases.atom',
          checkpoint: 'f2d62a1e35ed7c5afd3e350318ce0c64602f456185aaef165091336b6958c4e0'
  name 'Raven'
  homepage 'http://robotlolita.me/raven/'

  app 'Raven.app'
end
