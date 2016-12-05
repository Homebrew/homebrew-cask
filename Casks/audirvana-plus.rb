cask 'audirvana-plus' do
  version '2.6'
  sha256 'a13aa827170dd0fc0d209cc6813847411e49dc566d193ddd843b242e964910f4'

  url "https://audirvana.com/delivery/AudirvanaPlus_#{version}.dmg"
  appcast "https://audirvana.com/delivery/audirvanaplus#{version.major}_appcast.xml",
          checkpoint: 'a2223c00e95d702bb913a9359894e43927459487653c51efcceb4253a1a7e0be'
  name "Audirvana Plus #{version.major}"
  homepage 'https://audirvana.com/'

  app 'Audirvana Plus.app'
end
