cask 'djay-pro' do
  version '2.1.3,202004081401'
  sha256 '2ec1d58fb959776a86921ac14959f4531dea958a1c5a5c3391788fb5ef6ba278'

  url "http://download.algoriddim.com/djay/#{version.after_comma}/djay_Pro_#{version.before_comma}.zip"
  appcast 'https://www.algoriddim.com/djay-pro-mac/releasenotes/appcast'
  name 'Algoriddim djay Pro'
  homepage 'https://www.algoriddim.com/djay-pro-mac'

  app "djay Pro #{version.major}.app"
end
