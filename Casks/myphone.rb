cask 'myphone' do
  version '2.2.0'
  sha256 'df30b2ed62c074c3ccd5118f1a42521a6b170069781c491a4c93b1b3a581d335'

  url "http://www.myphonedesktop.com/dwn/myPhoneDesktop_macos_#{version.dots_to_underscores}.dmg"
  name 'myPhoneDesktop'
  homepage 'http://www.myphonedesktop.com/'

  app 'myPhoneDesktop.app'
end
