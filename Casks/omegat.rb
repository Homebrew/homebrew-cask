cask "omegat" do
  version "4.3.3"
  sha256 "7ed557bcd88972be1761bcd96b6f575b54f1eafd93b25b1440a5b3eda845fad8"

  url "https://downloads.sourceforge.net/omegat/OmegaT%20-%20Standard/OmegaT%20#{version.major_minor_patch}/OmegaT_#{version}_Mac_Notarized.zip",
      verified: "downloads.sourceforge.net/omegat/"
  name "OmegaT"
  desc "Translation memory tool"
  homepage "https://omegat.org/"

  livecheck do
    url "https://sourceforge.net/projects/omegat/rss?path=/OmegaT%20-%20Standard"
  end

  conflicts_with cask: "homebrew/cask-versions/omegat-latest"

  app "OmegaT_#{version}_Mac_Notarized/OmegaT.app"

  zap trash: [
    "~/Library/Application Support/OmegaT",
    "~/Library/Caches/OmegaT",
    "~/Library/Preferences/OmegaT",
    "~/Library/Saved Application State/org.omegat.OmegaT.savedState",
  ]
end
