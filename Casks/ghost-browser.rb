cask 'ghost-browser' do
  version '2.1.0.6'
  sha256 '17c24adf295b3d1fb2270af874eccd0ea0f9e093ffaf35f7b851aff2bed759b0'

  # ghostbrowser.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://ghostbrowser.s3.amazonaws.com/downloads/GhostBrowser-#{version}.dmg"
  name 'Ghost Browser'
  homepage 'https://ghostbrowser.com/download/'

  app 'Ghost Browser.app'
end
