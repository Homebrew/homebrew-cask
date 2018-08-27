cask 'mtmr' do
  version '0.17'
  sha256 '355ea507e2d38ecedba0c7250f3124ed89f00223110e138371d246d826253375'

  url "https://github.com/Toxblh/MTMR/releases/download/v#{version}/MTMR.#{version}.dmg"
  appcast 'https://github.com/Toxblh/MTMR/releases.atom'
  name 'My TouchBar. My rules'
  homepage 'https://github.com/Toxblh/MTMR'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'MTMR.app'

  zap trash: '~/Library/Application Support/MTMR'
end
