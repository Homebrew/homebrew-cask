cask "subsurface" do
  version "6.0.5144"
  sha256 "77d3e9fdd2722b618056ae5a743f98d691ce468239c402248d38b26b21730c8a"

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
