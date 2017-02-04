cask 'audirvana-plus' do
  version '2.6.6'
  sha256 'fd2d0832f1257459991cc1e4008b2c154d86b7b518f66064096d78e885a5ac92'

  url "https://audirvana.com/delivery/AudirvanaPlus_#{version}.dmg"
  appcast "https://audirvana.com/delivery/audirvanaplus#{version.major}_appcast.xml",
          checkpoint: '487036025712b4e5d8681666fb319408faa4177c749f3185386bf9d329d98f08'
  name "Audirvana Plus #{version.major}"
  homepage 'https://audirvana.com/'

  app 'Audirvana Plus.app'
end
