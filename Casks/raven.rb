cask 'raven' do
  version '0.2.0-alpha'
  sha256 '91792dfbe2abbc13f79bcafbe903e697f99b5abccfa900084b015e2c642eb633'

  # github.com/robotlolita/raven was verified as official when first introduced to the cask
  url "https://github.com/robotlolita/raven/releases/download/v#{version}/Raven-osx.zip"
  appcast 'https://github.com/robotlolita/raven/releases.atom',
          checkpoint: '6f07d82c58161ad3be28bf8362b3e697c73b68869846ca0d7be5ab0a63986d1e'
  name 'Raven'
  homepage 'http://robotlolita.me/raven/'

  app 'Raven.app'
end
