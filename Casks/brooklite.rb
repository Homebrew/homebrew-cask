cask "brooklite" do
  version "20210601"
  sha256 "006b08330a12724c1ad306174249898e6decc858961ae529f263f36c2c096e0e"

  url "https://github.com/txthinking/brook/releases/download/v#{version}/BrookLite.dmg"
  name "BrookLite"
  desc "Cross-platform strong encryption and undetectable proxy"
  homepage "https://github.com/txthinking/brook"

  app "BrookLite.app"
end
