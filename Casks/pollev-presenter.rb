cask 'pollev-presenter' do
  version '2.7.4'
  sha256 '42ba710bbfb6d2056acab31b1d6c288e925386c260edcf6e73ad9bb38e0bb8bd'

  # amazonaws.com/polleverywhere-app was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/polleverywhere-app/mac-beta/pollev.dmg'
  appcast 'https://polleverywhere-app.s3.amazonaws.com/mac-beta/appcast.xml',
          checkpoint: '7e9db59d272d93aa4a2dac504974c353fd0e760a5de92fa07c218ab47d3d821d'
  name 'PollEv Presenter'
  homepage 'https://www.polleverywhere.com/'
  license :gratis

  app 'PollEv Presenter.app'
end
