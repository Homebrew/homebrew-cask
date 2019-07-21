cask 'iglance' do
  version '1.3.3'
  sha256 '96dbe82f13c4929c47879d6a64bab2a39f8a083cff54cc308f9f6f0895be5dd3'

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
