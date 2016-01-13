cask 'curb' do
  version '1.1.1'
  sha256 '832750d2a75272763c5c2f681b11670584626c9d93bf993d6b3af96234558f68'

  url "https://mrrsoftware.com/Downloads/Curb/Curb-#{version.gsub('.', '_')}.zip"
  appcast 'https://www.mrrsoftware.com/Downloads/Curb/CurbSoftwareUpdates.xml',
          :checkpoint => 'c37c2d79fef8e40b1640f14cc7319b60537eb66e6ecb9256d51f83f8baa59d26'
  name 'Curb'
  homepage 'https://mrrsoftware.com/curb'
  license :gratis

  app 'Curb.app'
end
