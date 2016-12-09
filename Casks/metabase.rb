cask 'metabase' do
  version '0.21.0.1'
  sha256 'bbede1f42e9c7722ca0aa54462de0dade717f662051a11548c8783a5ece4da14'

  url "http://downloads.metabase.com/v#{version.major_minor_patch}/Metabase.dmg"
  appcast 'http://downloads.metabase.com/appcast.xml',
          checkpoint: '4b8896312a1a79f0db75c454e4599332f0ceb54259bc7a3344cc47c0b909ad35'
  name 'Metabase'
  homepage 'http://www.metabase.com/'

  app 'Metabase.app'
end
