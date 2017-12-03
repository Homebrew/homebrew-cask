cask 'omegat' do
  version '3.6.0_07'
  sha256 'd6f1a60f5270efcbb1bd494824cc276b595e44b32fa01cbcaeaef6dce53f3d0b'

  # downloads.sourceforge.net/omegat was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/omegat/OmegaT%20-%20Standard/OmegaT%20#{version.major_minor_patch}%20update%204/OmegaT_#{version}_Mac_Signed.zip"
  appcast 'https://sourceforge.net/projects/omegat/rss?path=/OmegaT%20-%20Standard',
          checkpoint: '9b605bfd9a498c9175151e05860be306fc956aa3a651bdc4eb5785cbc5fe211f'
  name 'OmegaT'
  homepage 'https://omegat.org/'

  app 'OmegaT.app'

  caveats do
    depends_on_java('8+')
  end
end
