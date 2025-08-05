cask "omegat" do
  version "6.0.1"
  sha256 "458cfd1508cfe7e73fc193b800f40c533a3191adddc3336769ee4e44fc50b3ae"

  url "https://downloads.sourceforge.net/omegat/OmegaT%20-%20Standard/OmegaT%20#{version.major_minor_patch}/OmegaT_#{version}_Mac.zip",
      verified: "downloads.sourceforge.net/omegat/"
  name "OmegaT"
  desc "Translation memory tool"
  homepage "https://omegat.org/"

  livecheck do
    url "https://sourceforge.net/projects/omegat/rss?path=/OmegaT%20-%20Standard"
  end

  conflicts_with cask: "omegat@latest"

  app "OmegaT_#{version}_Mac/OmegaT.app"

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
