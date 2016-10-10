cask 'pollev-presenter' do
  version '2.8.1'
  sha256 '93f74cca3589a16ab202705de684df00795ab6455ce7b7dd00730be35176e30c'

  # amazonaws.com/polleverywhere-app was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/polleverywhere-app/mac-beta/pollev.dmg'
  appcast 'https://polleverywhere-app.s3.amazonaws.com/mac-beta/appcast.xml',
          checkpoint: '6ebc1c92694e53bf219a540880fe16b2cb280c2a8e38084144076029d2b74d55'
  name 'PollEv Presenter'
  homepage 'https://www.polleverywhere.com/'

  app 'PollEv Presenter.app'
end
