cask "subsurface" do
  arch arm: "arm", intel: "intel"

  version "6.0.5738"
  sha256 arm:   "5c786a6253887e900e1c7d070d9e014f94e1843df1ffc6e267d09acd4f7a19c3",
         intel: "120a4e890d6cfb9e4fc80039c13b936767c776cc7b8e83988b7a8efac8033f15"

  url "https://subsurface-divelog.org/downloads/Subsurface-#{version}-#{arch}-CICD-release.dmg",
      user_agent: :fake
  name "Subsurface"
  desc "Open source divelog program"
  homepage "https://subsurface-divelog.org/"

  livecheck do
    url "https://subsurface-divelog.org/current-release/"
    regex(/href=.*?Subsurface[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}[._-]CICD[._-]release\.dmg/i)
  end

  depends_on macos: :monterey

  app "Subsurface.app"

  uninstall quit: "org.subsurface-divelog"

  zap trash: [
    "~/Library/Application Support/Subsurface",
    "~/Library/Caches/Subsurface",
    "~/Library/Preferences/org.hohndel.subsurface.Subsurface.plist",
  ]
end
