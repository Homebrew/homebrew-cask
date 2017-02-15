cask 'rawtherapee' do
  version '5.0-r1_gtk3'
  sha256 '4a8c7d527d06e674e9a3d61dac3a45760c5ff1314db06b81e63f74bc8a3dff16'

  url "http://www.rawtherapee.com/shared/builds/mac/RawTherapee_OSX_10.9_#{version}.app.zip"
  name 'RawTherapee'
  homepage 'http://rawtherapee.com/'

  depends_on macos: '>= 10.8'

  app 'RawTherapee-gtk3.app'
end
