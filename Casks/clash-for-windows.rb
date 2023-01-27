cask "clash-for-windows" do
  arch arm: "-arm64"

  version "0.20.15"
  sha256 arm:   "3a221916689276daeb1f6f267016eeb344b5b31b40b9122b795446c460ebaa88",
         intel: "08e3c6608678254f5bbde760937abd2b071aed8816faf2f324828c547a9a4aa1"

  url "https://github.com/Fndroid/clash_for_windows_pkg/releases/download/#{version}/Clash.for.Windows-#{version}#{arch}.dmg"
  name "Clash for Windows"
  desc "GUI based on Clash"
  homepage "https://github.com/Fndroid/clash_for_windows_pkg"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "Clash for Windows.app"
end
