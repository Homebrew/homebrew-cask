cask 'pollev-presenter' do
  version '2.6.9'
  sha256 'b250f3e614a061fd7613aa739a4c44533d9e783cbee7f301a11ab5c8930d9820'

  # amazonaws.com/polleverywhere-app was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/polleverywhere-app/mac-beta/pollev.dmg'
  appcast 'https://polleverywhere-app.s3.amazonaws.com/mac-beta/appcast.xml',
          checkpoint: 'c5d6b4e6dc85970130996a41079bd95dadbbe00fcc7d121ca541efc9d490894b'
  name 'PollEv Presenter'
  homepage 'https://www.polleverywhere.com/'
  license :gratis

  app 'PollEv Presenter.app'
end
