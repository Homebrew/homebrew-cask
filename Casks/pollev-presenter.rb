cask :v1 => 'pollev-presenter' do
  version :latest
  sha256 :no_check

  url 'https://s3.amazonaws.com/polleverywhere-app/mac-beta/pollev.dmg'
  name 'PollEv Presenter'
  homepage 'http://www.polleverywhere.com/'
  license :gratis

  app 'PollEv Presenter.app'
end
