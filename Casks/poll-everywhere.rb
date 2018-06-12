cask 'poll-everywhere' do
  version '2.16.0'
  sha256 'b6142eb60f3671c359545f16670d17c3cc5ed309d6eba91e68ec4a18190ed3b8'

  # amazonaws.com/polleverywhere-app was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/polleverywhere-app/mac-stable/#{version}/pollev.dmg"
  appcast 'https://s3.amazonaws.com/polleverywhere-app/mac-stable/appcast.xml'
  name 'PollEv Presenter'
  homepage 'https://www.polleverywhere.com/'

  app 'Poll Everywhere.app'
end
