cask 'steveschow-gfxcardstatus' do
  version '2.4.3i'
  sha256 '511ebc665cff319186753213684bf44bb7d0517716e65bd19ffd8db2fac2113e'

  url "https://github.com/steveschow/gfxCardStatus/releases/download/v#{version}/gfxCardStatus.app.zip"
  appcast 'https://github.com/steveschow/gfxCardStatus/releases.atom',
          checkpoint: '33d446605b692d858ffa9e512c2723ccfb13078c8a48fbd926adc042211ddc99'
  name 'gfxCardStatus'
  homepage 'https://github.com/steveschow/gfxCardStatus'

  app 'gfxCardStatus.app'
end
