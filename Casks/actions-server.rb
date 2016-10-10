cask 'actions-server' do
  version :latest
  sha256 :no_check

  url 'http://getactionsapp.com/downloads/ActionsServer.dmg'
  name 'Actions Server'
  homepage 'http://getactionsapp.com'

  app 'Actions Server.app'
end
