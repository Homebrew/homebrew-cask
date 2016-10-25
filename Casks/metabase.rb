cask 'metabase' do
  version '0.20.1.0'
  sha256 'f5c8b105973d7e78a68cdc5ededb69b5a5399812816900160bf710b0d1eaec34'

  url "http://downloads.metabase.com/v#{version.major_minor_patch}/Metabase.dmg"
  appcast 'http://downloads.metabase.com/appcast.xml',
          checkpoint: 'f70b9e2350a6b65bdb9bed51fe1a8250947fd91680fa91eb6ce5717776eb74f7'
  name 'Metabase'
  homepage 'http://www.metabase.com/'

  app 'Metabase.app'
end
