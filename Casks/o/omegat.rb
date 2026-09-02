cask "omegat" do
  version "6.0.1"
  sha256 "49eb622bdcf32dcb0f4ee7ba2adc43f9837614d7b71435f33f86235c7c75a6bb"

  url "https://downloads.sourceforge.net/omegat/OmegaT%20-%20Standard/OmegaT%20#{version.major_minor_patch}/OmegaT_#{version}_macOS_Notarized.dmg"
  name "OmegaT"
  desc "Translation memory tool"
  homepage "https://omegat.org/"

  livecheck do
    url "https://sourceforge.net/projects/omegat/rss?path=/OmegaT%20-%20Standard"
    regex(%r{url=.*?/OmegaT[._-]v?(\d+(?:\.\d+)+)[._-]macOS[._-]Notarized\.dmg}i)
  end

  conflicts_with cask: "omegat@latest"
  depends_on :macos

  app "OmegaT.app"

  zap trash: [
    "~/Library/Application Support/OmegaT",
    "~/Library/Caches/OmegaT",
    "~/Library/Preferences/OmegaT",
    "~/Library/Saved Application State/org.omegat.OmegaT.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
