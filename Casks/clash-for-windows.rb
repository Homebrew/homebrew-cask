cask "clash-for-windows" do
  version "0.15.6"

  if Hardware::CPU.intel?
    url "https://github.com/Fndroid/clash_for_windows_pkg/releases/download/#{version}/Clash.for.Windows-#{version}.dmg"
    sha256 "b3f3f18337dd4bf055a789de400087072e15669c8a874eb0aacc42de7e8727a8"
  else
    url "https://github.com/Fndroid/clash_for_windows_pkg/releases/download/#{version}/Clash.for.Windows-#{version}-arm64.dmg"
    sha256 "374a32b2bd684617aea6bb7ae1f42fc2e08e2fab08510e9840d227f9243350af"
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
