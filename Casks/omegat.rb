cask "omegat" do
  version "4.3.2"
  sha256 "e6fef5e4fca21ce7922b0c5fcb5a31039f87bee50b0357e12365ffb272c75210"

  # downloads.sourceforge.net/omegat/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/omegat/OmegaT%20-%20Standard/OmegaT%20#{version.major_minor_patch}/OmegaT_#{version}_Mac_Notarized.zip"
  appcast "https://sourceforge.net/projects/omegat/rss?path=/OmegaT%20-%20Standard"
  name "OmegaT"
  homepage "https://omegat.org/"

  app "OmegaT_#{version}_Mac_Notarized/OmegaT.app"
end
