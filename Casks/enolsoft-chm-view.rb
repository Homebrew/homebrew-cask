cask :v1 => 'enolsoft-chm-view' do
  version :latest
  sha256 :no_check

  url 'http://www.enolsoft.com/download/enolsoft-chm-view.dmg'
  homepage 'http://www.enolsoft.com/chm-view-for-mac.html'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Enolsoft CHM View.app'
end
