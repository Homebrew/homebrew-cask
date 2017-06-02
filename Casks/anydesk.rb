cask 'anydesk' do
  version :latest
  sha256 :no_check

  url 'https://download.anydesk.com/anydesk.dmg'
  name 'AnyDesk'
  homepage 'https://anydesk.com/remote-desktop'

  app 'AnyDesk.app'
end
