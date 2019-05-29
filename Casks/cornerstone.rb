cask 'cornerstone' do
  version '4.1'
  sha256 '0cc7f2cf400aabfd2ab38d230387e836d4071cf9f3fce8a9fd46f1c539a1fc7b'

  url "https://www.zennaware.com/cornerstone/downloads/Cornerstone-#{version}.zip"
  appcast "https://www.zennaware.com/cornerstone/appcast/feed#{version.major}.php"
  name 'Cornerstone'
  homepage 'https://www.zennaware.com/cornerstone/'

  app 'Cornerstone.app'
end
