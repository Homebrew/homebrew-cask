cask 'omegat' do
  version '3.6.0_11'
  sha256 'c685471966ad22c8564a923e2e8c9cd99cc6d6b87d723cfd00f3486f49990db9'

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
