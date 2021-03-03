cask "clash-for-windows" do
  version "0.14.7"
  sha256 "85e77e187ef9596f8aacca9033466d5e7ff33d8e4b761a79df790ff6617a7650"

  url "https://github.com/Fndroid/clash_for_windows_pkg/releases/download/#{version}/Clash.for.Windows-#{version}.dmg"
  name "Clash for Windows"
  homepage "https://github.com/Fndroid/clash_for_windows_pkg"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Clash for Windows.app"
end
