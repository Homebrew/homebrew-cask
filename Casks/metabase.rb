cask 'metabase' do
  version '0.13.0'
  sha256 '35b741061928eac96d4ba53b584dd0c99fd7ddb59cc9812fb802fe53843c28c3'

  url "http://downloads.metabase.com/v#{version}/Metabase.dmg"
  appcast 'http://downloads.metabase.com/appcast.xml',
          :sha256 => '780a6253ae1a5249a8846e7bbbb8dd828128e49669d81286eafc6b60ff456f56'
  name 'Metabase'
  homepage 'http://www.metabase.com/'
  license :affero

  app 'Metabase.app'
end
