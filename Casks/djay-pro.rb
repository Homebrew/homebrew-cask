cask 'djay-pro' do
  version '2.0.3,201712272146'
  sha256 'd7c4bac4281748a253d25e5a5cdd311c190d772a53ecf103f1421142b1669afb'

  url "http://download.algoriddim.com/djay/#{version.after_comma}/djay_Pro_#{version.before_comma}.zip"
  appcast 'https://www.algoriddim.com/djay-pro-mac/releasenotes/appcast',
          checkpoint: 'da30de7d5ff8d792f14c95fef3906c47f04be7e0e3dd99e8adae5f72a2249023'
  name 'Algoriddim djay Pro'
  homepage 'https://www.algoriddim.com/djay-pro-mac'

  app "djay Pro #{version.major}.app"
end
