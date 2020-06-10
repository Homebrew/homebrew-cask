cask 'bunch' do
  version '1.2.4,44'
  sha256 '0d78878d90c55be7cd56e2572c5c97ad8204d116cbe4f1f568465d1a0e85b925'

  url "https://cdn3.brettterpstra.com/updates/bunch/Bunch#{version.before_comma}#{version.after_comma}.dmg"
  appcast 'https://brettterpstra.com/updates/bunch/appcast.xml'
  name 'Bunch'
  homepage 'https://brettterpstra.com/projects/bunch/'

  auto_updates true

  app 'Bunch.app'

  zap trash: '~/Library/Preferences/com.brettterpstra.Bunch.plist'
end
