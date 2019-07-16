cask 'opencpn' do
  version '5.0.0,9065270'
  sha256 'ce572043a1e58f9b44cfd7904e1080fc202e2ae6152f357e898db4bc0d555ae1'

  url "http://download.opencpn.org/#{version.before_comma}/OpenCPN_#{version.before_comma}+#{version.after_comma}.dmg"
  appcast 'https://github.com/OpenCPN/OpenCPN/releases.atom'
  name 'OpenCPN'
  homepage 'https://www.opencpn.org/'

  app 'OpenCPN.app'
end
