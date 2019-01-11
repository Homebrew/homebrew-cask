cask 'lazpaint' do
  version '6.2'
  sha256 '76fc3688444c5ba1b9b3ee1be52d1197b83eef644aedd08a4a046206231292fd'

  url "https://downloads.sourceforge.net/lazpaint/lazpaint#{version}_osx32.zip"
  appcast 'https://sourceforge.net/projects/lazpaint/rss'
  name 'LazPaint'
  homepage 'https://sourceforge.net/projects/lazpaint/'

  app 'LazPaint.app'
end
