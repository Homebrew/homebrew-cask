cask "subsurface" do
  version "6.0.5707"
  sha256 "9fa5b1c5cc9c8f12f18ed841d3b1c60220ccd8b184d7adf5f3901703eab74901"

  url "https://subsurface-divelog.org/downloads/Subsurface-#{version}-CICD-release.dmg",
      user_agent: :fake
  name "Subsurface"
  desc "Open source divelog program"
  homepage "https://subsurface-divelog.org/"

  livecheck do
    url "https://subsurface-divelog.org/current-release/"
    regex(/href=.*?Subsurface[._-]v?(\d+(?:\.\d+)+)[._-]CICD[._-]release\.dmg/i)
  end

  depends_on macos: :monterey

  app "Subsurface.app"

  uninstall quit: "org.subsurface-divelog"

  zap trash: [
    "~/Library/Application Support/Subsurface",
    "~/Library/Caches/Subsurface",
    "~/Library/Preferences/org.hohndel.subsurface.Subsurface.plist",
  ]

  caveats do
    requires_rosetta
  end
end
