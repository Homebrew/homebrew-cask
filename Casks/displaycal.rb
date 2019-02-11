cask 'displaycal' do
  version '3.7.1.4'
  sha256 'be10135b6e90536740a6ecddcb6537aa62dfa255ed0e02e1b7cbffac039ef273'

  # sourceforge.net/dispcalgui was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/dispcalgui/release/#{version}/DisplayCAL-#{version}.pkg"
  appcast 'https://sourceforge.net/projects/dispcalgui/rss?path=/release'
  name 'DisplayCAL'
  homepage 'https://displaycal.net/'

  auto_updates true
  depends_on formula: 'argyll-cms'

  pkg "DisplayCAL-#{version}.pkg"

  uninstall pkgutil: [
                       'net.displaycal.DisplayCAL-3DLUT-maker',
                       'net.displaycal.DisplayCAL-curve-viewer',
                       'net.displaycal.DisplayCAL-profile-info',
                       'net.displaycal.DisplayCAL-scripting-client',
                       'net.displaycal.DisplayCAL-synthprofile',
                       'net.displaycal.DisplayCAL-testchart-editor',
                       'net.displaycal.DisplayCAL-VRML-to-X3D-converter',
                       'net.displaycal.DisplayCAL',
                       'net.displaycal.pkg.DisplayCAL',
                     ]

  zap trash: [
               '~/Library/Application Support/dispcalGUI',
               '~/Library/Logs/dispcalGUI',
               '~/Library/Preferences/dispcalGUI',
             ]
end
