cask 'dispcalgui' do
  version :latest
  sha256 :no_check

  url 'http://dispcalgui.hoech.net/download/dispcalGUI.dmg'
  name 'dispcalGUI'
  homepage 'https://dispcalgui.hoech.net'
  license :gpl

  app 'dispcalGUI.app'
end
