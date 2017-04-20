cask 'revisions' do
  version '2.3'
  sha256 'a0fcd2241511574a401c571f1a13b74c2124ba01606ccb4bea3ef05398f15361'

  url "https://revisionsapp.com/downloads/revisions-#{version}.dmg"
  appcast 'https://revisionsapp.com/releases',
          checkpoint: '46f1a2b2ece8d629014de0abc1aaa1b673f007caca47cd8d2659a94b46f8f326'
  name 'Revisions'
  homepage 'https://revisionsapp.com/'

  app 'Revisions.app'
end
