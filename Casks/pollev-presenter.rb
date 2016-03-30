cask 'pollev-presenter' do
  version '2.7.3'
  sha256 '3890f7256347d08267a18d1c66025d1548e62ab68a6b602e23a645c1383f8bf0'

  # amazonaws.com/polleverywhere-app was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/polleverywhere-app/mac-beta/pollev.dmg'
  appcast 'https://polleverywhere-app.s3.amazonaws.com/mac-beta/appcast.xml',
          checkpoint: 'fbd5e6cffe98117aa86d01bc23d0b90efbda8efa4e0613ecc37c61161a775047'
  name 'PollEv Presenter'
  homepage 'https://www.polleverywhere.com/'
  license :gratis

  app 'PollEv Presenter.app'
end
