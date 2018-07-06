cask 'cornerstone' do
  version '4'
  sha256 '01b3ae6c003901d006b0a1e6153ed1db619beeac8a72cecd960a30d30b9cfc47'

  url "https://www.zennaware.com/cornerstone/downloads/Cornerstone-#{version}.zip"
  appcast "https://www.zennaware.com/cornerstone/appcast/feed#{version.major}.php"
  name 'Cornerstone'
  homepage 'https://www.zennaware.com/cornerstone/'

  app 'Cornerstone.app'
end
