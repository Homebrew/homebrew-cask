cask 'audirvana-plus' do
  version '2.6.4'
  sha256 '693d4e9af53a0eaa8a96a474c19f237ffa0387e8d0dfa6353f00140226fb72be'

  url "https://audirvana.com/delivery/AudirvanaPlus_#{version}.dmg"
  appcast "https://audirvana.com/delivery/audirvanaplus#{version.major}_appcast.xml",
          checkpoint: 'b20274c82807b04f4613c3caf3778059f8b355defdab3b1ef4a8dbe54083cabf'
  name "Audirvana Plus #{version.major}"
  homepage 'https://audirvana.com/'

  app 'Audirvana Plus.app'
end
