cask "neohtop" do
  arch arm: "silicon", intel: "intel"
  platform = on_arch_conditional arm: "aarch64", intel: "x64"

  version "1.3.0"
  sha256 arm:   "f631f1cd7aea3d6536ea790bf8bd75ddbcbb1461bbff1851e129db6d50487c53",
         intel: "9fb2f50ec27ae8835f9b56739a13000cd28aaf8ed6d85e01cff6abb585ebe9c6"

  url "https://github.com/Abdenasser/neohtop/releases/download/v#{version}/#{arch}-NeoHtop_#{version}_#{platform}.dmg"
  name "NeoHtop"
  desc "Htop on steroids"
  homepage "https://abdenasser.github.io/neohtop/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "NeoHtop.app"

  zap trash: [
    "~/Library/Caches/com.neohtop.dev",
    "~/Library/WebKit/com.neohtop.dev",
  ]
end
