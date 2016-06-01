cask 'metabase' do
  version '0.17.1'
  sha256 'eab08c264bfc18cc107f1a7ee690ee30c9ba9261f055cde154a06eceb08a6e35'

  url "http://downloads.metabase.com/v#{version}/Metabase.dmg"
  appcast 'http://downloads.metabase.com/appcast.xml',
          checkpoint: '396102b87b795047a9b38507b5db87bc4bd93ddc2284f9434177c06fc073378e'
  name 'Metabase'
  homepage 'http://www.metabase.com/'
  license :affero

  app 'Metabase.app'
end
