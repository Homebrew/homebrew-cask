cask 'onscreen-control' do
  version '1.37'
  sha256 '7263b8cb714cf25db16cee7310ba03a79cc28754cb18f55c30642cc745d64740'

  url 'http://www.lg.com/us/lgecs.downloadFile.ldwf?DOC_ID=20150116943155&what=MANUAL&fromSystem=LG.COM&fileId=kF2MFoPcI9YSuCcD23D9w&ORIGINAL_NAME_b1_a1=MAC_OnScreenControl.1.37.zip'
  name 'LG OnScreen Control'
  homepage 'http://www.lg.com/'

  pkg 'OnScreenControl.1.37.pkg'

  uninstall quit: 'com.LGSI.-.OnScreen-Control', pkgutil: 'com.lge.onscreenControl.*'
end
