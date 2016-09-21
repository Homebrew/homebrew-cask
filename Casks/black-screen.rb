cask 'black-screen' do
  version '0.2.43'
  sha256 'fd3a153bbc8d0f43d4da42ef8d9674ab574b88cf1740a7030ace30e2e9ef04c1'

  url "https://github.com/shockone/black-screen/releases/download/v#{version}/black-screen-#{version}-mac.zip"
  appcast 'https://github.com/shockone/black-screen/releases.atom',
          checkpoint: '4a419b8c71863c1782ebd6fc6c8b14cdc7986a13247392d4d600f575a7778c14'
  name 'Black Screen'
  homepage 'https://github.com/shockone/black-screen'
  license :mit

  app 'Black Screen.app'
end
