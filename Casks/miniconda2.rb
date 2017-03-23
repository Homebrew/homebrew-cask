cask 'miniconda' do
  version :latest
  sha256 :no_check

  url 'https://repo.continuum.io/miniconda/Miniconda2-latest-MacOSX-x86_64.sh'
  name 'Continuum Analytics Miniconda'
  homepage 'https://www.continuum.io/why-anaconda'

  auto_updates true
  depends_on macos: '>= :lion'
  container type: :naked

  installer script: 'Miniconda2-latest-MacOSX-x86_64.sh',
            args:   ['-b']

  uninstall delete: '~/miniconda2'

  caveats do
    path_environment_variable '~/miniconda2/bin'
  end
end
