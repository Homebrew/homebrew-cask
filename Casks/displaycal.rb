cask 'displaycal' do
  version '3.8.9.2'
  sha256 'fa6d59bdcb4b1960295eca15ee4220c3cef4da73a15616359075fae234fa25c2'

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
