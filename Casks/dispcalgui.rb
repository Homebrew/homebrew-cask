cask :v1 => 'dispcalgui' do
  version :latest
  sha256 :no_check

  url 'http://dispcalgui.hoech.net/download/dispcalGUI.dmg'
  homepage 'http://dispcalgui.hoech.net'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'dispcalGUI.app'
end
