cask "subsurface" do
  version "6.0.5112"
  sha256 "5dfd3a2133d4e35d4e92d46fb005c0220f79906591834497d0066190bcbe22c0"

  url "https://subsurface-divelog.org/downloads/Subsurface-#{version}-CICD-release.dmg",
      user_agent: :fake
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
