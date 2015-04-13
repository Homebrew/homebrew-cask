cask :v1 => 'appfresh' do
  version :latest
  sha256 :no_check

  url 'http://backend.metaquark.de/download/appfresh'
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
