cask 'curb' do
  version '1.1.1'
  sha256 '832750d2a75272763c5c2f681b11670584626c9d93bf993d6b3af96234558f68'

  url "https://mrrsoftware.com/Downloads/Curb/Curb-#{version.gsub('.', '_')}.zip"
  appcast 'https://www.mrrsoftware.com/Downloads/Curb/CurbSoftwareUpdates.xml',
          checkpoint: '2141e205b0037e8e79d74564078cdaeb803b0dc2c1162e45477ebb9bcc72ae92'
  name 'Curb'
  homepage 'https://mrrsoftware.com/curb'
  license :gratis

  app 'Curb.app'
end
