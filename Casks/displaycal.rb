cask 'displaycal' do
  version '3.8.7.1'
  sha256 '500f424f7e59d9fd63cfe1e0e0c554c52f95c6820a5d0f117551b28ff2fac9f6'

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
