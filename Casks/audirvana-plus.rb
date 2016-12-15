cask 'audirvana-plus' do
  version '2.6.2'
  sha256 '0918e1c9cf632648aee38d3693fb1beb72f6c30900a0cfecb4f81dfefed5048b'

  url "https://audirvana.com/delivery/AudirvanaPlus_#{version}.dmg"
  appcast "https://audirvana.com/delivery/audirvanaplus#{version.major}_appcast.xml",
          checkpoint: 'b7668aa0a055b297315eab0c12bf9e7d1cc4a87ccd1c3a2fedb82119bc931c62'
  name "Audirvana Plus #{version.major}"
  homepage 'https://audirvana.com/'

  app 'Audirvana Plus.app'
end
