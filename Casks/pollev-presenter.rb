cask 'pollev-presenter' do
  version '2.6.9'
  sha256 'b250f3e614a061fd7613aa739a4c44533d9e783cbee7f301a11ab5c8930d9820'

  # amazonaws.com is the official download host per the appcast feed
  url "https://polleverywhere-app.s3.amazonaws.com/mac-beta/v#{version}/pollev.dmg"
  appcast 'https://polleverywhere-app.s3.amazonaws.com/mac-beta/appcast.xml',
          :sha256 => 'bac5223a873f18bff951df7e9e03ef192c0ff6334b38c9553f77c4e32c8e3108'
  name 'PollEv Presenter'
  homepage 'https://www.polleverywhere.com/'
  license :gratis

  app 'PollEv Presenter.app'
end
