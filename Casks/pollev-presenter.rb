cask :v1 => 'pollev-presenter' do
  version :latest
  sha256 :no_check

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://s3.amazonaws.com/polleverywhere-app/mac-beta/pollev.dmg'
  name 'PollEv Presenter'
  appcast 'https://polleverywhere-app.s3.amazonaws.com/mac-beta/appcast.xml',
          :sha256 => 'ac75f9d23d2fe7c3c486ec176f10217ab5d9886fd803c1b19e519a6d80befe7d'
  homepage 'https://www.polleverywhere.com/'
  license :gratis
  tags :vendor => 'Poll Everywhere'

  app 'PollEv Presenter.app'
end
