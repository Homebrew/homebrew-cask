cask 'opencpn' do
  version '5.0.1,0266678'
  sha256 'b3da4a758d898a9a2f79ba2618ff6cf9529b06dd1ccba14f4dd3e4996660b143'

  url "http://download.opencpn.org/#{version.before_comma}/OpenCPN_#{version.before_comma}+#{version.after_comma}.dmg"
  appcast 'https://github.com/OpenCPN/OpenCPN/releases.atom'
  name 'OpenCPN'
  homepage 'https://www.opencpn.org/'

  app 'OpenCPN.app'
end
