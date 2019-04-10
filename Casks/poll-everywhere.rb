cask 'poll-everywhere' do
  version '2.20.1'
  sha256 '3f01fa415018393afeef6a39a0340a3ef49eaf65630fea4a921426c4c0d308fc'

  # amazonaws.com/polleverywhere-app was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/polleverywhere-app/mac-stable/#{version}/pollev.dmg"
  appcast 'https://s3.amazonaws.com/polleverywhere-app/mac-stable/appcast.xml'
  name 'PollEv Presenter'
  homepage 'https://www.polleverywhere.com/'

  app 'Poll Everywhere.app'
end
