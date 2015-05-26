cask :v1 => 'pollev-presenter' do
  version :latest
  sha256 :no_check

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://s3.amazonaws.com/polleverywhere-app/mac-beta/pollev.dmg'
  name 'PollEv Presenter'
  appcast 'https://polleverywhere-app.s3.amazonaws.com/mac-beta/appcast.xml',
          :sha256 => 'dbfce32dced0e0370f6757d34aa89e176cab2495dcaaafc4a4fba85090e35bf6'
  homepage 'http://www.polleverywhere.com/'
  license :gratis
  tags :vendor => 'Poll Everywhere'

  app 'PollEv Presenter.app'
end
