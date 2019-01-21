cask 'mtmr' do
  version '0.19.1'
  sha256 '312a8c16a4878626d1de28638cc621aea43a53b8277efa91b2cb03a0ce7c0829'

  url "https://mtmr.app/MTMR%20#{version}.dmg"
  appcast 'https://mtmr.app/appcast.xml'
  name 'My TouchBar. My rules'
  homepage 'https://forum.mtmr.app/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'MTMR.app'

  zap trash: '~/Library/Application Support/MTMR'
end
