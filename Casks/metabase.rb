cask 'metabase' do
  version '0.13.0'
  sha256 '35b741061928eac96d4ba53b584dd0c99fd7ddb59cc9812fb802fe53843c28c3'

  url "http://downloads.metabase.com/v#{version}/Metabase.dmg"
  appcast 'http://downloads.metabase.com/appcast.xml',
          checkpoint: '54adac98a301a104408fc7983d4e466d86e6ba830ca5431479ed425fa6759827'
  name 'Metabase'
  homepage 'http://www.metabase.com/'
  license :affero

  app 'Metabase.app'
end
