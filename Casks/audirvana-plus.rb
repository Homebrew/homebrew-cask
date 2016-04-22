cask 'audirvana-plus' do
  version '2.5'
  sha256 '1ec64f1e0743cb0c5a6084d33db9851bd920d3c95cfefb0f61d73c5a66a2755f'

  url "https://audirvana.com/delivery/AudirvanaPlus_#{version}.dmg"
  appcast 'https://audirvana.com/delivery/audirvanaplus2_appcast.xml',
          checkpoint: '57992a3bc8fc20129af011a952eb1c04815c5aca01a9875b50683f63eedfd5a3'
  name 'Audirvana Plus 2'
  homepage 'https://audirvana.com/'
  license :commercial

  app 'Audirvana Plus.app'
end
