cask 'curb' do
  version '1.2.0'
  sha256 '577a18a69e097d149cc1f2a81d1a898c85d2d6e421478b1fbd4dc0a6e3633bd6'

  url "https://mrrsoftware.com/Downloads/Curb/Curb-#{version.dots_to_underscores}.zip"
  appcast 'https://www.mrrsoftware.com/Downloads/Curb/CurbSoftwareUpdates.xml',
          checkpoint: '0e9a73e958a6be2158c2df7580acc0222f50b71d9c620dc89e2be848324a251f'
  name 'Curb'
  homepage 'https://mrrsoftware.com/curb/'

  app 'Curb.app'
end
