cask 'iglance' do
  version '2.0.8'
  sha256 '6f5a7c392c4511c7326a6518d08c61cde82b4d854e2df4518802f41e5fe76ba7'

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
