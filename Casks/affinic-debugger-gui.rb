cask :v1 => 'affinic-debugger-gui' do
  version :latest
  sha256 :no_check

  url 'http://www.affinic.com/download/adg_macosx.dmg'
  name 'Affinic Debugger GUI'
  name 'ADG'
  homepage 'http://www.affinic.com/?page_id=435'
  license :freemium

  app 'Affinic Debugger GUI.app'
end
