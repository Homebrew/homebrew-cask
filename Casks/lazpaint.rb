cask 'lazpaint' do
  version '6.2'
  sha256 '44f48aee359337f8d5a9fd3b3786f71251dc6b961486b30938a308197e28498e'

  url "https://downloads.sourceforge.net/lazpaint/lazpaint#{version}_osx32.zip"
  name 'LazPaint'
  homepage 'http://sourceforge.net/projects/lazpaint/'
  license :gpl

  app 'LazPaint.app'
end
