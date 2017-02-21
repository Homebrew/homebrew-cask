cask 'omegat' do
  version '3.6.0_04'
  sha256 '3047e5f43d2460901cf476b9b716c1f7c08c8ba0'

  # downloads.sourceforge.net/project/omegat was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/project/omegat/OmegaT%20-%20Standard/OmegaT%20#{version.major_minor}%20%build%20#{version.patch}/OmegaT_#{version}_Mac_Signed.zip"
  appcast 'https://sourceforge.net/projects/omegat/rss',
          checkpoint: 'ee727bd624e9fc1e1358f540422afe8b6f5d917258e97db85d3cb9c8115f4519'
  name 'OmegaT'
  homepage 'http://www.omegat.org/'

  app 'OmegaT.app'

  caveats do
    depends_on_java('8+')
  end
end
