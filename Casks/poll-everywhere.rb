cask 'poll-everywhere' do
  version '2.20.0'
  sha256 '55a514352ebf18ca48b0a197841a369500b36f8eddcb16bdd196eccf0f8f8b95'

  # amazonaws.com/polleverywhere-app was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/polleverywhere-app/mac-stable/#{version}/pollev.dmg"
  appcast 'https://s3.amazonaws.com/polleverywhere-app/mac-stable/appcast.xml'
  name 'PollEv Presenter'
  homepage 'https://www.polleverywhere.com/'

  app 'Poll Everywhere.app'
end
