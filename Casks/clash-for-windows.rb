cask "clash-for-windows" do
  version "0.17.2"

  if Hardware::CPU.intel?
    url "https://github.com/Fndroid/clash_for_windows_pkg/releases/download/#{version}/Clash.for.Windows-#{version}.dmg"
    sha256 "ef591cde914ebcf3bf85ff1a2e12179e22b61d9260c3d6f553656fe78d67f99d"
  else
    url "https://github.com/Fndroid/clash_for_windows_pkg/releases/download/#{version}/Clash.for.Windows-#{version}-arm64.dmg"
    sha256 "ae0c6965126328750d681a027391f66af11d798fd222928c7d2b7c862bb7d20f"
  end

  name "Clash for Windows"
  desc "GUI based on Clash"
  homepage "https://github.com/Fndroid/clash_for_windows_pkg"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Clash for Windows.app"
end
