cask 'pollev-presenter' do
  version '2.9.0'
  sha256 'fb0e363f4665efbe79082024417afaaa03f48174e3bcda573c2f513c79f4c89e'

  # amazonaws.com/polleverywhere-app was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/polleverywhere-app/mac-stable/#{version}/pollev.dmg"
  appcast 'https://polleverywhere-app.s3.amazonaws.com/mac-beta/appcast.xml',
          checkpoint: '007c5488e8d9d53c03b5966338fd42186477b29d5a21789c156c9afad87f237e'
  name 'PollEv Presenter'
  homepage 'https://www.polleverywhere.com/'

  app 'PollEv Presenter.app'
end
