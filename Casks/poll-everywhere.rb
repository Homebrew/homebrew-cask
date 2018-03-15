cask 'poll-everywhere' do
  version '2.15.0'
  sha256 '3043a881170dcc38f86c1d9ae76566cf3a54a8c9733270f47793435d67350a3e'

  # amazonaws.com/polleverywhere-app was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/polleverywhere-app/mac-stable/#{version}/pollev.dmg"
  appcast 'https://s3.amazonaws.com/polleverywhere-app/mac-stable/appcast.xml',
          checkpoint: '007e5d491389fca41a304d1b25b4dc1903fdfdc021a6195c24238fdb852beee9'
  name 'PollEv Presenter'
  homepage 'https://www.polleverywhere.com/'

  app 'Poll Everywhere.app'
end
