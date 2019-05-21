cask 'bunch' do
  version '1.0.722'
  sha256 'e3a06d0373205e6fefe2d4eae63feff1f02676ddb928f4b53804e5c1bba26a7d'

  url "https://cdn3.brettterpstra.com/updates/bunch/Bunch#{version}.dmg"
  name 'Bunch'
  homepage 'https://brettterpstra.com/projects/bunch/'

  app 'Bunch.app'

  zap trash: '~/Library/Preferences/com.brettterpstra.Bunch.plist'
end
