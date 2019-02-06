cask 'mtmr' do
  version '0.19.4'
  sha256 '2169699f43c564b3a96947628a6fdafe0aa6a55a783957de2582024c7d3951f2'

  url "https://mtmr.app/MTMR%20#{version}.dmg"
  appcast 'https://mtmr.app/appcast.xml'
  name 'My TouchBar. My rules'
  homepage 'https://forum.mtmr.app/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'MTMR.app'

  zap trash: '~/Library/Application Support/MTMR'
end
