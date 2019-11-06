cask 'omegat' do
  version '4.3.1'
  sha256 '2e427d9fd8008a88877aeaa0e634f3d4ff8cbd51bb11e48314535940fc43c0a5'

  # downloads.sourceforge.net/omegat was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/omegat/OmegaT%20-%20Standard/OmegaT%20#{version.major_minor_patch}/OmegaT_#{version}_Mac_Notarized.zip"
  appcast 'https://sourceforge.net/projects/omegat/rss?path=/OmegaT%20-%20Standard'
  name 'OmegaT'
  homepage 'https://omegat.org/'

  app "OmegaT_#{version}_Mac_Notarized/OmegaT.app"

  caveats do
    depends_on_java '8+'
  end
end
