cask 'kawa' do
  version '1.1.0'
  sha256 '19a30df528471f688d3d4f43d82b6a5f5e435ba8c361e8f5ed971c0471705f72'

  url "https://github.com/utatti/kawa/releases/download/v#{version}/Kawa.zip"
  appcast 'https://github.com/utatti/kawa/releases.atom',
          checkpoint: '114cbc4b75917884267befecb2952f27676bd2d79c82bf2fdac902acb215b6f9'
  name 'Kawa'
  homepage 'https://github.com/utatti/kawa'

  app 'Kawa.app'
end
