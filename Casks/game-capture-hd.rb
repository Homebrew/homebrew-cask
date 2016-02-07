cask 'game-capture-hd' do
  version '2.0.3_970'
  sha256 '9eeb0bb7c00f29aa17a0bf4ff958f43e7ddae035b1390a003b0a43b6585c3542'

  url "http://files.elgato.com/gamecapture/gchdm_#{version.no_dots}.dmg"
  appcast 'http://updates.elgato.com/autoupdate/gameCapture20.rss?lang=English',
          checkpoint: '418a4e2cf83e9fe113e2d6abb4883c90af10ab9830071573a4fba426aa9bc981'
  name 'Game Capture HD'
  homepage 'https://www.elgato.com/en/gaming/gamecapture-hd'
  license :commercial

  app 'Game Capture HD.app'
end
