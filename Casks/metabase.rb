cask 'metabase' do
  version '0.21.1.0'
  sha256 'fdb7af70bfdf6a23a37397bd767efcb58a307f66f5251405eb09428e7c28fa54'

  url "http://downloads.metabase.com/v#{version.major_minor_patch}/Metabase.dmg"
  appcast 'http://downloads.metabase.com/appcast.xml',
          checkpoint: '88160499b40e01d174b0c98b641d50603ead9daf1b0268e75c0dcfe16dc2fbed'
  name 'Metabase'
  homepage 'http://www.metabase.com/'

  app 'Metabase.app'
end
