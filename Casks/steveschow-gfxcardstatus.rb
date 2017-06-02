cask 'steveschow-gfxcardstatus' do
  version '2.4.3i'
  sha256 '511ebc665cff319186753213684bf44bb7d0517716e65bd19ffd8db2fac2113e'

  url "https://github.com/steveschow/gfxCardStatus/releases/download/v#{version}/gfxCardStatus.app.zip"
  appcast 'https://github.com/steveschow/gfxCardStatus/releases.atom',
          checkpoint: 'd567b3d2bd83568e434fac95018230436e5c14ea832e30279e2a43a9815ef6f5'
  name 'gfxCardStatus'
  homepage 'https://github.com/steveschow/gfxCardStatus'

  app 'gfxCardStatus.app'
end
