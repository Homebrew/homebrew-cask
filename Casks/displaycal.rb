cask 'displaycal' do
  version '3.8.6.0'
  sha256 '26e3c3de3594da241d3c42f1388897beda394f58d5695653a5cd492dda6d587f'

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
