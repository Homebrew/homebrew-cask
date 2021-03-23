cask "brooklite" do
  version "20210214"
  sha256 "abc16505c7fb3a1918e8590b11b9723759fb06e76cedf4b88deb279632a8f55f"

  url "https://github.com/txthinking/brook/releases/download/v#{version}/BrookLite.dmg"
  name "BrookLite"
  desc "Cross-platform strong encryption and undetectable proxy"
  homepage "https://github.com/txthinking/brook"

  app "BrookLite.app"
end
