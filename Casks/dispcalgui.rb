cask :v1 => 'dispcalgui' do
  version :latest
  sha256 :no_check

  url 'http://dispcalgui.hoech.net/download/dispcalGUI.dmg'
  name 'dispcalGUI'
  homepage 'http://dispcalgui.hoech.net'
  license :gpl

  app 'dispcalGUI.app'
end
