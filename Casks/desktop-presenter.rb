cask 'desktop-presenter' do
  version '2.0.8'
  sha256 'a84ec64836cdadeaf79f9393c8e32f7a19c31c90352845c600895fdd7921e262'

  url "https://www.telestream.net/download-files/wirecast/7-2/DesktopPresenter-#{version}.dmg"
  name 'Desktop Presenter'
  homepage 'https://dynamic.telestream.net/downloads/download-desktop-presenter.asp'

  app 'Desktop Presenter.app'
end
