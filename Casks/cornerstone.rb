cask 'cornerstone' do
  version '4'
  sha256 '01b3ae6c003901d006b0a1e6153ed1db619beeac8a72cecd960a30d30b9cfc47'

  url "https://www.zennaware.com/cornerstone/downloads/Cornerstone-#{version}.zip"
  appcast "https://www.zennaware.com/cornerstone/appcast/feed#{version.major}.php",
          checkpoint: 'a3b51cff0b3ebd79e59f0d63287f0786effcc0b94625cf6ef77bedd329740163'
  name 'Cornerstone'
  homepage 'https://www.zennaware.com/cornerstone/'

  app 'Cornerstone.app'
end
