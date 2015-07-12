cask :v1 => 'appfresh' do
  version '1.0.5_909'
  sha256 'e4d4e719bebf17f0ea5e7336e5da84d032b26dfaefa2f5102250fe9a208674cc'

  url "http://backend.metaquark.de/download/appfresh/versions/#{version.sub(%r{.*_},'')}"
  name 'AppFresh'
  appcast 'http://backend.metaquark.de/appcast/appfresh.xml'
  homepage 'http://metaquark.de/appfresh/mac'
  license :commercial
  tags :vendor => 'metaquark'

  uninstall :launchctl => 'de.metaquark.appfresh'

  zap :delete => [
    '~/Library/Application Support/AppFresh',
    '~/Library/Application Support/Growl/Tickets/AppFresh.growlTicket',
    '~/Library/Caches/de.metaquark.appfresh',
    '~/Preferences/de.metaquark.appfresh.plist',
    '~/Library/Saved Application State/de.metaquark.appfresh.savedState'
  ]

  app 'AppFresh.app'
end
