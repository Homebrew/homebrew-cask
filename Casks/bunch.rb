cask 'bunch' do
  version '1.1.9,36'
  sha256 '1c12ad12e649e8271f004e4e84115260d191d66c705ded3ea17d767caa2f3418'

  url "https://cdn3.brettterpstra.com/updates/bunch/Bunch#{version.before_comma}#{version.after_comma}.dmg"
  appcast 'https://brettterpstra.com/updates/bunch/appcast.xml'
  name 'Bunch'
  homepage 'https://brettterpstra.com/projects/bunch/'

  auto_updates true

  app 'Bunch.app'

  zap trash: '~/Library/Preferences/com.brettterpstra.Bunch.plist'
end
