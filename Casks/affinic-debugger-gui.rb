cask :v1 => 'affinic-debugger-gui' do
  version :latest
  sha256 :no_check

  url 'http://www.affinic.com/download/adg_macosx.dmg'
  homepage 'http://www.affinic.com/?page_id=435'
  license :unknown    # todo: improve this machine-generated value

  app 'Affinic Debugger GUI.app'
end
