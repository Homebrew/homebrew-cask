cask 'revisions' do
  version '2.2.1'
  sha256 '56622f5f034fa7d5a759ce2db56635bee6382a1eb39d8154db8c724bcc416f07'

  url "https://revisionsapp.com/downloads/revisions-#{version}.dmg"
  appcast 'https://revisionsapp.com/releases',
          checkpoint: '8c3db32bb569e96b76c42df65d3aeb218cddb965d4a044c7bf9120c65c241ae3'
  name 'Revisions'
  homepage 'https://revisionsapp.com/'

  app 'Revisions.app'
end
