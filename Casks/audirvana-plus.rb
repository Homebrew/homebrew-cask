cask 'audirvana-plus' do
  version '2.6.3'
  sha256 '681f10515d43c4bde680ca9bc2b0e456b092538cc8a878a8bc78841763529482'

  url "https://audirvana.com/delivery/AudirvanaPlus_#{version}.dmg"
  appcast "https://audirvana.com/delivery/audirvanaplus#{version.major}_appcast.xml",
          checkpoint: 'e3933264202fbbbb9cab1b9b46e7299291df1ce00fd6a7ad92db02bcae21f8d6'
  name "Audirvana Plus #{version.major}"
  homepage 'https://audirvana.com/'

  app 'Audirvana Plus.app'
end
