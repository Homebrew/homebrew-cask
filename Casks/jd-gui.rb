cask :v1 => 'jd-gui' do
  version '0.3.5'
  sha256 'c76dff6d27410e0a11167dd52055b7c3df3a62b64ff2613bbabec5712a95054a'

  url "http://jd.benow.ca/jd-gui/downloads/jd-gui-#{version}.osx.i686.dmg"
  name 'JD-GUI'
  homepage 'http://jd.benow.ca/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'JD-GUI.app'
end
