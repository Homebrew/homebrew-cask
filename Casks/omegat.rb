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

  app "OmegaT_#{version}_Mac_Notarized/OmegaT.app"
end
