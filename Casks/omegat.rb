cask 'omegat' do
  version '4.3.0'
  sha256 '0beccd1bcc4633e65f4ed272aaf946c95b17e5d343b39a90a7b742f2768b065b'

  # downloads.sourceforge.net/omegat was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/omegat/OmegaT%20-%20Standard/OmegaT%20#{version.major_minor_patch}/OmegaT_#{version}_Mac_Signed.zip"
  appcast 'https://sourceforge.net/projects/omegat/rss?path=/OmegaT%20-%20Standard'
  name 'OmegaT'
  homepage 'https://omegat.org/'

  app "OmegaT_#{version}_Mac_Signed/OmegaT.app"

  caveats do
    depends_on_java '8+'
  end
end
