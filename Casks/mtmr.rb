cask 'mtmr' do
  version '0.19.2'
  sha256 '0c74a293b4a97a68d8f8a54fd26bdbc21bbb93ca353aee4fdd7cf52eb287c11d'

  url "https://mtmr.app/MTMR%20#{version}.dmg"
  appcast 'https://mtmr.app/appcast.xml'
  name 'My TouchBar. My rules'
  homepage 'https://forum.mtmr.app/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'MTMR.app'

  zap trash: '~/Library/Application Support/MTMR'
end
