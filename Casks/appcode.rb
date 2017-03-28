cask 'appcode' do
  version '2017.1,171.3890.9'
  sha256 '2bc10b2797bba2816c441accbfb6c340d329e2d8fcdd59320f24b73feb14f7cc'

  url "https://download.jetbrains.com/objc/AppCode-#{version.before_comma}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=AC&latest=true&type=release',
          checkpoint: '034ee84690173bdd06c240bdf5ee8e7f768b25f342c55213841b9b9c2b8e313d'
  name 'AppCode'
  homepage 'https://www.jetbrains.com/objc/'

  auto_updates true
  conflicts_with cask: 'appcode-eap'

  app 'AppCode.app'

  zap delete: [
                "~/Library/Preferences/AppCode#{version.major_minor}",
                "~/Library/Application Support/AppCode#{version.major_minor}",
                "~/Library/Caches/AppCode#{version.major_minor}",
                "~/Library/Logs/AppCode#{version.major_minor}",
              ]
end
