cask 'anydesk' do
  version :latest
  sha256 :no_check

  url 'https://download.anydesk.com/anydesk.dmg'
  name 'AnyDesk'
  homepage 'https://anydesk.com/'

  app 'AnyDesk.app'
end
