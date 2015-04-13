cask :v1 => 'pollev-presenter' do
  version :latest
  sha256 :no_check

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://s3.amazonaws.com/polleverywhere-app/mac-beta/pollev.dmg'
  name 'PollEv Presenter'
  homepage 'http://www.polleverywhere.com/'
  license :gratis
  tags :vendor => 'Poll Everywhere'

  app 'PollEv Presenter.app'
end
