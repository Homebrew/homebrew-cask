cask 'omegat' do
  version '3.6.0_04'
  sha256 '4f08f22619d2b4fa4afca0eecac0f137ddc11a69da4bd79f7e6f6877e99ffba3'

  # downloads.sourceforge.net/omegat was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/omegat/OmegaT%20-%20Standard/OmegaT%20#{version.major_minor_patch}%20update%204/OmegaT_#{version}_Mac_Signed.zip"
  appcast 'https://sourceforge.net/projects/omegat/rss',
          checkpoint: 'ee727bd624e9fc1e1358f540422afe8b6f5d917258e97db85d3cb9c8115f4519'
  name 'OmegaT'
  homepage 'http://www.omegat.org/'

  app "OmegaT_#{version}_Mac_Signed/OmegaT.app"

  caveats do
    depends_on_java('8+')
  end
end
