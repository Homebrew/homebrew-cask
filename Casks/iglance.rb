cask 'iglance' do
  version '1.4.2'
  sha256 '02dc4b63c80bcf1e1ac622c977ac7be5ac506ede9fee2f9e1a33fd50aa8afdc4'

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
