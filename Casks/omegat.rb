cask 'omegat' do
  version '3.6.0_09'
  sha256 '62274f144ff14c1a11d0bb2995006d06b8b3215807d620f735e248f5b87dda2c'

  # downloads.sourceforge.net/omegat was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/omegat/OmegaT%20-%20Standard/OmegaT%20#{version.major_minor_patch}%20update%204/OmegaT_#{version}_Mac_Signed.zip"
  appcast 'https://sourceforge.net/projects/omegat/rss?path=/OmegaT%20-%20Standard',
          checkpoint: '922c7a77f0831f858ef6854339d911fbba41e42f084f6032da325fccbffb4151'
  name 'OmegaT'
  homepage 'https://omegat.org/'

  app 'OmegaT.app'

  caveats do
    depends_on_java '8+'
  end
end
