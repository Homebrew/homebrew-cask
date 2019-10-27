cask 'iglance' do
  version '1.4.1'
  sha256 '51c352393c1dc4421d287cfef8b45ef44ea60e9f0ff0645ceda84507f6781f76'

  url "https://github.com/iglance/iglance/releases/download/v#{version}/iGlance.dmg"
  appcast 'https://github.com/iglance/iglance/releases.atom'
  name 'iGlance'
  homepage 'https://github.com/iglance/iGlance'

  depends_on macos: '>= :high_sierra'

  app 'iGlance.app'

  zap trash: [
               '~/Library/Caches/io.iglance.iGlance',
               '~/Library/Preferences/io.iglance.iGlance.plist',
             ]
end
