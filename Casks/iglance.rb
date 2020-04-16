cask 'iglance' do
  version '2.0.5'
  sha256 '383c93f0237230d25b7aa7e3d79003472d5f6414d2bfe913082830f8e013ed25'

  url "https://github.com/iglance/iglance/releases/download/v#{version}/iGlance_v#{version}.zip"
  appcast 'https://github.com/iglance/iglance/releases.atom'
  name 'iGlance'
  homepage 'https://github.com/iglance/iGlance'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'iGlance.app'

  zap trash: [
               '~/Library/Caches/io.github.iglance.iGlance',
               '~/Library/Preferences/io.github.iglance.iGlance.plist',
             ]
end
