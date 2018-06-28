cask 'fontlab' do
  version :latest
  sha256 :nocheck

  # download.fontlab.com is official when first introduced to the cask
  url 'https://download.fontlab.com/fontlab-vi/get-mac.php'
  name 'Fontlab VI'
  homepage 'https://www.fontlab.com/font-editor/fontlab-vi/#download'

  app 'FontLab VI.app'
end
