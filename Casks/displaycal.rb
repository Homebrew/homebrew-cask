cask "displaycal" do
  version "3.8.9.3"
  sha256 "3e3f4a506c3ffc1e2004d57c6cd521d6cacb1bb6a71f9e3fa4cd81ab6ad4f31a"

  # sourceforge.net/dispcalgui/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/dispcalgui/release/#{version}/DisplayCAL-#{version}.pkg"
  appcast "https://sourceforge.net/projects/dispcalgui/rss?path=/release"
  name "DisplayCAL"
  homepage "https://displaycal.net/"

  auto_updates true
  depends_on formula: "argyll-cms"

  pkg "DisplayCAL-#{version}.pkg"

  uninstall pkgutil: "net.displaycal.*.DisplayCAL.*"

  zap trash: [
    "~/Library/Application Support/dispcalGUI",
    "~/Library/Logs/dispcalGUI",
    "~/Library/Preferences/dispcalGUI",
  ]
end
