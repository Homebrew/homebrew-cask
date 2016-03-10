cask 'metabase' do
  version '0.15.1'
  sha256 '701bebcb62ec063063b24a1b0bd3af3a97f83a7865a3d97acf136b04b481939b'

  url "http://downloads.metabase.com/v#{version}/Metabase.dmg"
  appcast 'http://downloads.metabase.com/appcast.xml',
          checkpoint: '265aa8728744ba818fbb31f039b04bef074987dfbfb113bbadfcd3fd04603bc3'
  name 'Metabase'
  homepage 'http://www.metabase.com/'
  license :affero

  app 'Metabase.app'
end
