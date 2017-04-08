cask 'miniconda' do
  version :latest
  sha256 :no_check

  url 'https://repo.continuum.io/miniconda/Miniconda3-latest-MacOSX-x86_64.sh'
  name 'Continuum Analytics Miniconda'
  homepage 'https://www.continuum.io/why-anaconda'

  auto_updates true
  depends_on macos: '>= :lion'
  container type: :naked

  installer script: 'Miniconda3-latest-MacOSX-x86_64.sh',
            args:   ['-b']

  uninstall delete: '~/miniconda3'

  caveats do
    path_environment_variable '~/miniconda3/bin'
  end
end
