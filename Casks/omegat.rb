cask 'omegat' do
  version :latest
  sha256 :no_check

  # sourceforge.net/projects/omegat was verified as official when first introduced to the cask
  url 'https://sourceforge.net/projects/omegat/files/latest/download'
  appcast 'https://sourceforge.net/projects/omegat/rss',
          checkpoint: 'ee727bd624e9fc1e1358f540422afe8b6f5d917258e97db85d3cb9c8115f4519'
  name 'OmegaT'
  homepage 'http://www.omegat.org/'

  app 'OmegaT.app'

  caveats do
    depends_on_java('8+')
  end
end
