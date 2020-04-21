cask 'iglance' do
  version '2.0.7'
  sha256 'a38fae716475b5c488c9876e6ecb3756e70abf7a4927ad30488379bc27505918'

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
