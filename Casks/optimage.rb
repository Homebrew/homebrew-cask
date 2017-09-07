cask 'optimage' do
  version '1.3.0'
  sha256 '6b6b3d89d98253aadd29f4b20205796cca746fd2aa5d92c2459799753d3f64d9'

  url 'https://getoptimage.com/download/optimage-mac.zip'
  appcast 'https://getoptimage.com/appcast.xml',
          checkpoint: 'fe9efe28fa212edeec16ff175fe994974426b45eda32a12a366885cbc96f65bf'
  name 'Optimage'
  homepage 'https://getoptimage.com/'

  auto_updates true
  depends_on macos: '>= :mountain_lion'

  app 'Optimage.app'
end
