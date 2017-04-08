cask 'pollev-presenter' do
  version '2.9.0'
  sha256 'fdd711dc48d6cebdbb5d4d4951d586180bacc3ce2227d48b7a31d6380f3efe8b'

  # amazonaws.com/polleverywhere-app was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/polleverywhere-app/mac-stable/pollev.dmg'
  appcast 'https://polleverywhere-app.s3.amazonaws.com/mac-beta/appcast.xml',
          checkpoint: '007c5488e8d9d53c03b5966338fd42186477b29d5a21789c156c9afad87f237e'
  name 'PollEv Presenter'
  homepage 'https://www.polleverywhere.com/'

  app 'PollEv Presenter.app'
end
