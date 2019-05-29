cask 'istumbler' do
  if MacOS.version <= :mavericks
    version '100'
    sha256 '71f6a6b0e255a853664ed4900835a42f2d23dcb05de35acfb3ac2ec1c5fb2edc'
  else
    version '103.43'
    sha256 '35796f9a119814527f98b85a0b8fbe0352895c3d8f21e9fd5af2cceb6d0277cb'
  end

  url "https://istumbler.net/downloads/istumbler-#{version}.dmg"
  appcast 'https://istumbler.net/feeds/appcast.rss'
  name 'iStumbler'
  homepage 'https://istumbler.net/'

  auto_updates true

  app 'iStumbler.app'
end
