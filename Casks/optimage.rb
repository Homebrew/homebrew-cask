cask 'optimage' do
  version '2.1.1'
  sha256 'fdc04c3533ac40e3a19296b661bed46a02e50f0d0bd01a6eee652393d3d5e6d4'

  url 'https://getoptimage.com/download/optimage-mac.zip'
  appcast 'https://getoptimage.com/appcast.xml'
  name 'Optimage'
  homepage 'https://getoptimage.com/'

  auto_updates true
  depends_on macos: '>= :mountain_lion'

  app 'Optimage.app'
end
