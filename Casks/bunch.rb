cask 'bunch' do
  version '1.1.7,33'
  sha256 '2223f904ab5dbcbce8726e0eea6a3c14dbb00ca26cdc8b4456e1c53dd0f14013'

  url "https://cdn3.brettterpstra.com/updates/bunch/Bunch#{version.before_comma}#{version.after_comma}.dmg"
  appcast 'https://brettterpstra.com/updates/bunch/appcast.xml'
  name 'Bunch'
  homepage 'https://brettterpstra.com/projects/bunch/'

  auto_updates true

  app 'Bunch.app'

  zap trash: '~/Library/Preferences/com.brettterpstra.Bunch.plist'
end
