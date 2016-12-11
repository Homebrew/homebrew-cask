cask 'metabase' do
  version '0.21.0.3'
  sha256 'a2f1df7bb5ef1f3ce0fa32971ae76bea404d976f6aa34c224c265825ee6479c9'

  url "http://downloads.metabase.com/v#{version.major_minor_patch}/Metabase.dmg"
  appcast 'http://downloads.metabase.com/appcast.xml',
          checkpoint: '5f551b1788610008a6ac426110c838dfa097bc0bf5cb157585ff23ca9ecf7eac'
  name 'Metabase'
  homepage 'http://www.metabase.com/'

  app 'Metabase.app'
end
