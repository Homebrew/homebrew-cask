cask "subsurface" do
  version "6.0.5298"
  sha256 "8af4cce87195cb86615b35450ad552fbd0d3cd3b7e5fa15c535bfd7a663e02f6"

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

  caveats do
    requires_rosetta
  end
end
