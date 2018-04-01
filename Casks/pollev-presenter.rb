cask 'pollev-presenter' do
  version '2.14.0'
  sha256 '636aa88b5819f13c0cd50e143f8782c9ddea8d4d7ebea0db6858acd59c596647'

  # amazonaws.com/polleverywhere-app was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/polleverywhere-app/mac-stable/#{version}/pollev.dmg"
  appcast 'https://polleverywhere-app.s3.amazonaws.com/mac-beta/appcast.xml',
          checkpoint: '007c5488e8d9d53c03b5966338fd42186477b29d5a21789c156c9afad87f237e'
  name 'PollEv Presenter'
  homepage 'https://www.polleverywhere.com/'

  app 'PollEv Presenter.app'
end
