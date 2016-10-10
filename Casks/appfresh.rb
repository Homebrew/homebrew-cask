cask 'appfresh' do
  version '1.0.5_909'
  sha256 'e4d4e719bebf17f0ea5e7336e5da84d032b26dfaefa2f5102250fe9a208674cc'

  url "http://backend.metaquark.de/download/appfresh/versions/#{version.sub(%r{.*_}, '')}"
  appcast 'http://backend.metaquark.de/appcast/appfresh.xml',
          checkpoint: '47eaf3743f5384da1cd77e5fa122d6be1e3377b0232bb5da7467ec62e8631ec7'
  name 'metaquark AppFresh'
  homepage 'http://metaquark.de/appfresh/mac'

  app 'AppFresh.app'

  uninstall launchctl: 'de.metaquark.appfresh'

  zap delete: [
                '~/Library/Application Support/AppFresh',
                '~/Library/Application Support/Growl/Tickets/AppFresh.growlTicket',
                '~/Library/Caches/de.metaquark.appfresh',
                '~/Preferences/de.metaquark.appfresh.plist',
                '~/Library/Saved Application State/de.metaquark.appfresh.savedState',
              ]
end
