cask 'omegat' do
  version '3.6.0_10'
  sha256 '050402aa527aa599c855c95aeb5df8efd193227a2e1ea8b6082ffb091b18fd36'

  # downloads.sourceforge.net/omegat was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/omegat/OmegaT%20-%20Standard/OmegaT%20#{version.major_minor_patch}%20update%204/OmegaT_#{version}_Mac_Signed.zip"
  appcast 'https://sourceforge.net/projects/omegat/rss?path=/OmegaT%20-%20Standard'
  name 'OmegaT'
  homepage 'https://omegat.org/'

  app 'OmegaT.app'

  caveats do
    depends_on_java '8+'
  end
end
