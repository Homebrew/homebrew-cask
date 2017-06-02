cask 'revisions' do
  version '2.3'
  sha256 'a0fcd2241511574a401c571f1a13b74c2124ba01606ccb4bea3ef05398f15361'

  url "https://revisionsapp.com/downloads/revisions-#{version}.dmg"
  appcast 'https://revisionsapp.com/releases',
          checkpoint: '3d64ab59a74f6207b84529a5b51ca7073553002ce1ffbef03e37075ab93bedd1'
  name 'Revisions'
  homepage 'https://revisionsapp.com/'

  app 'Revisions.app'
end
