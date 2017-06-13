cask 'djay-pro' do
  version '1.4.3,201703200957'
  sha256 'a2d1af6130a5e2de76c3abe85fafff8047f4160b98d7a55ba5df39b30c6e13e0'

  url "http://download.algoriddim.com/djay/#{version.after_comma}/djay_Pro_#{version.before_comma}.zip"
  appcast 'https://www.algoriddim.com/djay-pro-mac/releasenotes/appcast',
          checkpoint: '6c669e49621bc10770238d0207b157789a534ba3b952a463354cc8d1e340fdcb'
  name 'Algoriddim djay Pro'
  homepage 'https://www.algoriddim.com/djay-pro-mac'

  app 'djay Pro.app'
end
