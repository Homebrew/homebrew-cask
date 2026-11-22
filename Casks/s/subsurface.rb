cask "subsurface" do
  arch arm: "arm64", intel: "x86_64"

  version "6.0.5841"
  sha256 arm:   "5de39087d2788ac8a1c002da46d5f1e75f8f9d07724aac1b8f1461a592f51944",
         intel: "25c93d61249491d944d63e77d7861b163c7349b1d69e9bdf9354b8a931bee311"

  url "https://subsurface-divelog.org/downloads/Subsurface-#{version}-CICD-release-#{arch}.dmg",
      user_agent: :fake
  name "Subsurface"
  desc "Open source divelog program"
  homepage "https://subsurface-divelog.org/"

  livecheck do
    url "https://subsurface-divelog.org/current-release/"
    regex(/href=.*?Subsurface[._-]v?(\d+(?:\.\d+)+)[._-]CICD[._-]release[._-]#{arch}\.dmg/i)
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
