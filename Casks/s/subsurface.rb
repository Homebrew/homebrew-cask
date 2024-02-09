cask "subsurface" do
  version "6.0.5082"
  sha256 "03d39ac7c77aaa5e8bbaf6aeb1b201c78873f463f0bb732b6287fb587c3a5417"

  url "https://subsurface-divelog.org/downloads/Subsurface-#{version}-CICD-release.dmg"
  name "Subsurface"
  desc "Open source divelog program"
  homepage "https://subsurface-divelog.org/"

  livecheck do
    url "https://subsurface-divelog.org/current-release/"
    regex(/href=.*?Subsurface[._-]v?(\d+(?:\.\d+)+)[._-]CICD[._-]release\.dmg/i)
  end

  app "Subsurface.app"

  zap trash: [
    "~/Library/Application Support/Subsurface",
    "~/Library/Caches/Subsurface",
    "~/Library/Preferences/org.hohndel.subsurface.Subsurface.plist",
  ]
end
