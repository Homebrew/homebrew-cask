cask 'pollev-presenter' do
  version '2.8.0'
  sha256 '20e9222a0a109bb7588b1fd34848402c2a64350ac3e9bc020b8bc97772a33d06'

  # amazonaws.com/polleverywhere-app was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/polleverywhere-app/mac-beta/pollev.dmg'
  appcast 'https://polleverywhere-app.s3.amazonaws.com/mac-beta/appcast.xml',
          checkpoint: 'f46feb4920dbbba86d8385db1b4094c8ddb2da092258a09cca705d285df6316d'
  name 'PollEv Presenter'
  homepage 'https://www.polleverywhere.com/'
  license :gratis

  app 'PollEv Presenter.app'
end
