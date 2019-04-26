cask 'displaycal' do
  version '3.8.0.0'
  sha256 '696163477d45925d7c36517ff4f117592d097911bdea53ba08b74d80cac96006'

  # sourceforge.net/dispcalgui was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/dispcalgui/release/#{version}/DisplayCAL-#{version}.pkg"
  appcast 'https://sourceforge.net/projects/dispcalgui/rss?path=/release'
  name 'DisplayCAL'
  homepage 'https://displaycal.net/'

  auto_updates true
  depends_on formula: 'argyll-cms'

  pkg "DisplayCAL-#{version}.pkg"

  uninstall pkgutil: 'net.displaycal.*.DisplayCAL.*'

  zap trash: [
               '~/Library/Application Support/dispcalGUI',
               '~/Library/Logs/dispcalGUI',
               '~/Library/Preferences/dispcalGUI',
             ]
end
