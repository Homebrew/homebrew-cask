cask 'omegat' do
  version '3.6.0_05'
  sha256 '7140f71701523a13cc79791aafca105bfa6ed5b401a1cad25954a3007d1b68a2'

  # downloads.sourceforge.net/omegat was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/omegat/OmegaT%20-%20Standard/OmegaT%20#{version.major_minor_patch}%20update%204/OmegaT_#{version}_Mac_Signed.zip"
  appcast 'https://sourceforge.net/projects/omegat/rss?path=/OmegaT%20-%20Standard',
          checkpoint: '2155252f798843886b330aa944c9c41f8b53790d3c9fbd36a1a1f332d5248390'
  name 'OmegaT'
  homepage 'http://www.omegat.org/'

  app "OmegaT_#{version}_Mac_Signed/OmegaT.app"

  caveats do
    depends_on_java('8+')
  end
end
