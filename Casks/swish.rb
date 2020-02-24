cask 'swish' do
  version '1.2.2'
  sha256 'ca0254f7cd8876ee328bed0065032f5866ded8763976da9a5e79230ae924fa3c'

  url "https://highlyopinionated.co/swish/Swish-#{version}.zip"
  appcast 'https://highlyopinionated.co/swish/appcast.xml'
  name 'Swish'
  homepage 'https://highlyopinionated.co/swish/'

  auto_updates true
  depends_on macos: '>= :high_sierra'

  app 'Swish.app'
end
