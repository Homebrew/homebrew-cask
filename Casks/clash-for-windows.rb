cask "clash-for-windows" do
  version "0.13.6"
  sha256 "69ff62759bbab457bce1f066408ae81ee231156bcbf3cd95557d941cc32f61d6"

  url "https://github.com/Fndroid/clash_for_windows_pkg/releases/download/#{version}/Clash.for.Windows-#{version}.dmg"
  appcast "https://github.com/Fndroid/clash_for_windows_pkg/releases.atom"
  name "Clash for Windows"
  homepage "https://github.com/Fndroid/clash_for_windows_pkg"

  app "Clash for Windows.app"
end
