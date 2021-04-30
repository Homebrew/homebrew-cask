cask "brooklite" do
  version "20210401"
  sha256 "cf82418dfe4610427dbecd97f992850d410c4ca89e8e27e0c56005ee589d2789"

  url "https://github.com/txthinking/brook/releases/download/v#{version}/BrookLite.dmg"
  name "BrookLite"
  desc "Cross-platform strong encryption and undetectable proxy"
  homepage "https://github.com/txthinking/brook"

  app "BrookLite.app"
end
