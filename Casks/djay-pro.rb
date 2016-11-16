cask 'djay-pro' do
  version '1.4.1,201611141545'
  sha256 '2bbea232f4f063baa45fb5597c43bfb9ad79446adf7725d4600ef177865dcd22'

  url "http://download.algoriddim.com/djay/#{version.after_comma}/djay_Pro_#{version.before_comma}.zip"
  appcast 'https://www.algoriddim.com/djay-pro-mac/releasenotes/appcast',
          checkpoint: 'f235c1d3211312736614b116657eac784d4dfa6028bbe06298b55fa980de10d7'
  name 'Algoriddim djay Pro'
  homepage 'https://www.algoriddim.com/djay-pro-mac'

  app 'djay Pro.app'
end
