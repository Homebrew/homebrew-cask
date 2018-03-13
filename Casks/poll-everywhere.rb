cask 'poll-everywhere' do
  version '2.15.0'
  sha256 '3043a881170dcc38f86c1d9ae76566cf3a54a8c9733270f47793435d67350a3e'

  # amazonaws.com/polleverywhere-app was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/polleverywhere-app/mac-stable/#{version}/pollev.dmg"
  appcast 'https://polleverywhere-app.s3.amazonaws.com/mac-beta/appcast.xml',
          checkpoint: '007c5488e8d9d53c03b5966338fd42186477b29d5a21789c156c9afad87f237e'
  name 'PollEv Presenter'
  homepage 'https://www.polleverywhere.com/'

  app 'Poll Everywhere.app'
end
