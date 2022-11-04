cask "clash-for-windows" do
  arch arm: "-arm64"

  version "0.20.7"
  sha256 arm:   "b001bda48037ca59e7385a7845173b86af3768a868ddbf36d494d691339d10fd",
         intel: "781d792c96b70c622ece27178d53ae008bf46ffc54cd317ce38757b4737d22e8"

  url "https://github.com/Fndroid/clash_for_windows_pkg/releases/download/#{version}/Clash.for.Windows-#{version}#{arch}.dmg"
  name "Clash for Windows"
  desc "GUI based on Clash"
  homepage "https://github.com/Fndroid/clash_for_windows_pkg"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Clash for Windows.app"
end
