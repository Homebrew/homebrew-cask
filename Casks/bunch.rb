cask 'bunch' do
  version '1.1.5,31'
  sha256 'eef1d9a7bc093e620f54892c600690e77561a1cb0ef03797535d3ce30874ffb2'

  url "https://cdn3.brettterpstra.com/updates/bunch/Bunch#{version.before_comma}#{version.after_comma}.dmg"
  appcast 'https://brettterpstra.com/updates/bunch/appcast.xml'
  name 'Bunch'
  homepage 'https://brettterpstra.com/projects/bunch/'

  auto_updates true

  app 'Bunch.app'

  zap trash: '~/Library/Preferences/com.brettterpstra.Bunch.plist'
end
