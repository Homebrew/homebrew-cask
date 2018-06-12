cask 'kawa' do
  version '1.1.0'
  sha256 '19a30df528471f688d3d4f43d82b6a5f5e435ba8c361e8f5ed971c0471705f72'

  url "https://github.com/utatti/kawa/releases/download/v#{version}/Kawa.zip"
  appcast 'https://github.com/utatti/kawa/releases.atom'
  name 'Kawa'
  homepage 'https://github.com/utatti/kawa'

  app 'Kawa.app'
end
