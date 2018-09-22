cask 'optimage' do
  version '2.2.0'
  sha256 '61d51e3ede6d93e237a9fcd757becc79e805a1f6393eb4c99a46724329318f0e'

  url 'https://getoptimage.com/download/optimage-mac.zip'
  appcast 'https://getoptimage.com/appcast.xml'
  name 'Optimage'
  homepage 'https://getoptimage.com/'

  auto_updates true
  depends_on macos: '>= :mountain_lion'

  app 'Optimage.app'
end
