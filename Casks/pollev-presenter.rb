cask 'pollev-presenter' do
  version '2.12.0'
  sha256 'ca8c43bdbe592512f5488da3a12d42d980285c4830dec8b622a389a737ca633f'

  # amazonaws.com/polleverywhere-app was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/polleverywhere-app/mac-stable/#{version}/pollev.dmg"
  appcast 'https://polleverywhere-app.s3.amazonaws.com/mac-beta/appcast.xml',
          checkpoint: '007c5488e8d9d53c03b5966338fd42186477b29d5a21789c156c9afad87f237e'
  name 'PollEv Presenter'
  homepage 'https://www.polleverywhere.com/'

  app 'PollEv Presenter.app'
end
