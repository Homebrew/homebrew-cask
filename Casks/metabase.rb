cask 'metabase' do
  version '0.14.1'
  sha256 'ab6d3f67abd034ef2f5abec4300f84ee122d9a12c6313dfacf531b476288e3b9'

  url "http://downloads.metabase.com/v#{version}/Metabase.dmg"
  appcast 'http://downloads.metabase.com/appcast.xml',
          checkpoint: '00dcd919677f67ed38999f3196172a96bab3a626cc8fdb319144c3d68f45c8ae'
  name 'Metabase'
  homepage 'http://www.metabase.com/'
  license :affero

  app 'Metabase.app'
end
