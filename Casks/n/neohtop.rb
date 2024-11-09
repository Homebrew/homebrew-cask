cask "neohtop" do
  arch arm: "silicon", intel: "intel"
  platform = on_arch_conditional arm: "aarch64", intel: "x64"

  version "1.0.9"
  sha256 arm:   "a8d97f0e9acfbc1ea3744125e47426e8bc48ef7be141081a7666282eb088557d",
         intel: "fd526df9eea2c299c82a9ad2486234f3a7c364c87404831ef46f8814248bec02"

  url "https://github.com/Abdenasser/neohtop/releases/download/v#{version}/#{arch}-NeoHtop_#{version}_#{platform}.dmg",
      verified: "github.com/Abdenasser/neohtop/"
  name "NeoHtop"
  desc "Htop on steroids"
  homepage "https://abdenasser.github.io/neohtop/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  app "NeoHtop.app"

  zap trash: [
    "~/Library/Caches/com.neohtop.dev",
    "~/Library/WebKit/com.neohtop.dev",
  ]
end
