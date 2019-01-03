cask 'keka' do
  version '1.1.8'
  sha256 'efbbee9c344b3e407dbb2e1f40a356a3387ad985045bb08d44023fe67e87e87e'

  # github.com/aonez/Keka was verified as official when first introduced to the cask
  url "https://github.com/aonez/Keka/releases/download/v#{version}/Keka-#{version}.dmg"
  appcast 'https://github.com/aonez/Keka/releases.atom'
  name 'Keka'
  homepage 'http://www.kekaosx.com/'

  auto_updates true
  conflicts_with cask: 'keka-beta'
  depends_on macos: '>= :mavericks'

  app 'Keka.app'

  zap trash: [
               '~/Library/Application Support/Keka',
               '~/Library/Caches/com.aone.keka',
               '~/Library/Preferences/com.aone.keka.plist',
               '~/Library/Saved Application State/com.aone.keka.savedState',
             ]
end
