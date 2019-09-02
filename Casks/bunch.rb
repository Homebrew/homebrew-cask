cask 'bunch' do
  version '1.1.8,35'
  sha256 'b3b0010e2e37340b4609cf2a63e245e77e49167a37790847f50397b3cf9b2099'

  url "https://cdn3.brettterpstra.com/updates/bunch/Bunch#{version.before_comma}#{version.after_comma}.dmg"
  appcast 'https://brettterpstra.com/updates/bunch/appcast.xml'
  name 'Bunch'
  homepage 'https://brettterpstra.com/projects/bunch/'

  auto_updates true

  app 'Bunch.app'

  zap trash: '~/Library/Preferences/com.brettterpstra.Bunch.plist'
end
