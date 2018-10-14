cask 'mtmr' do
  version '0.18.4'
  sha256 '38a26761f72ac2ee60cc11fcf9563290d1f361219ca05db83c9170cde2d48060'

  url "https://github.com/Toxblh/MTMR/releases/download/v#{version}/MTMR.#{version}.dmg"
  appcast 'https://github.com/Toxblh/MTMR/releases.atom'
  name 'My TouchBar. My rules'
  homepage 'https://github.com/Toxblh/MTMR'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'MTMR.app'

  zap trash: '~/Library/Application Support/MTMR'
end
