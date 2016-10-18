cask 'metabase' do
  version '0.20.0.0'
  sha256 '7c99d2ef558f65629588c52b6d9894498c8b1a5ecd338408b3ead6904ba50091'

  url "http://downloads.metabase.com/v#{version.major_minor_patch}/Metabase.dmg"
  appcast 'http://downloads.metabase.com/appcast.xml',
          checkpoint: '1207078f6fb0df95127eb8d4bece66f17a08ce0fc419bf017fdf255195fe74c3'
  name 'Metabase'
  homepage 'http://www.metabase.com/'

  app 'Metabase.app'
end
