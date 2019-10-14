cask 'bunch' do
  version '1.2.1,39'
  sha256 'ceb15bb0c71f88acbd250b0e2a3edd5bf8372fc3cbd90f9f15bedc2dafa717d3'

  url "https://cdn3.brettterpstra.com/updates/bunch/Bunch#{version.before_comma}#{version.after_comma}.dmg"
  appcast 'https://brettterpstra.com/updates/bunch/appcast.xml'
  name 'Bunch'
  homepage 'https://brettterpstra.com/projects/bunch/'

  auto_updates true

  app 'Bunch.app'

  zap trash: '~/Library/Preferences/com.brettterpstra.Bunch.plist'
end
