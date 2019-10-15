cask 'agfeo-dashboard' do
  version '1.0.2'
  sha256 '176f393ae2bb11e675ecd054849e0fbb49df89dda62831c8e7515110d2edca51'

  url 'https://www2.agfeo.de/agfeo_web/dokulib.nsf/Anlage_w/E0B7AA5A7141C0B7C1258458002E496B/$FILE/AGFEO-Dashboard_x64_agfeo_1.0.2.dmg'
  name 'AGFEO Dashboard'
  homepage 'https://www.agfeo.de/'

  depends_on macos: '>= :sierra'

  app 'AGFEO-Dashboard.app'
end
