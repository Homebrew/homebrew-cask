cask :v1 => 'dispcalgui' do
  version :latest
  sha256 :no_check

  url 'http://dispcalgui.hoech.net/download/dispcalGUI.dmg'
  homepage 'http://dispcalgui.hoech.net'
  license :unknown

  app 'dispcalGUI.app'
end
