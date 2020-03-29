cask 'iglance' do
  version '2.0.3'
  sha256 '4f5c416d99c35884e28ad7b418c28b6f8c1cd75faa33895ae5f85d3ad04b0735'

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
