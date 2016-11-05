cask 'audirvana-plus' do
  version '2.5.4'
  sha256 '201709b93eb31e80b947067381fe6f39983d79133479fbfb88142ab3ee78f006'

  url "https://audirvana.com/delivery/AudirvanaPlus_#{version}.dmg"
  appcast "https://audirvana.com/delivery/audirvanaplus#{version.major}_appcast.xml",
          checkpoint: '275426037674fd288d768dafea7bf6c91cd0c26cf3505242fba11155672d952c'
  name "Audirvana Plus #{version.major}"
  homepage 'https://audirvana.com/'

  app 'Audirvana Plus.app'
end
