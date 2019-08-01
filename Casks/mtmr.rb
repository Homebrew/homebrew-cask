cask 'mtmr' do
  version '0.22.1'
  sha256 'a01ea28460bf9e2af847d4b8f8d9837f4119e91ae70ee4647af5f47ed1bc01c7'

  url "https://mtmr.app/MTMR%20#{version}.dmg"
  appcast 'https://mtmr.app/appcast.xml'
  name 'My TouchBar. My rules'
  homepage 'https://mtmr.app/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'MTMR.app'

  zap trash: '~/Library/Application Support/MTMR'
end
