cask "omegat@latest" do
  version "5.7.1"
  sha256 "557a4f21533e8f73a4463f4b195c2d81996fbc25e576e447add9f5ce68661949"

  url "https://downloads.sourceforge.net/omegat/OmegaT%20-%20Latest/OmegaT%20#{version}/OmegaT_#{version}_Beta_Mac_Notarized.zip",
      verified: "downloads.sourceforge.net/omegat/"
  name "OmegaT 5"
  desc "Translation memory tool"
  homepage "https://omegat.org/"

  livecheck do
    url "https://sourceforge.net/projects/omegat/rss?path=/OmegaT%20-%20Latest"
  end

  conflicts_with cask: "omegat"

  app "OmegaT_#{version}_Beta_Mac_Notarized//OmegaT.app"

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
