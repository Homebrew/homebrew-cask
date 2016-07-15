cask 'anaconda' do
  version '4.1.1'
  sha256 '7c3c06e9281c41f1213d357cb5f233fd99d6d0db6bdba8d9fd7cfad1f1a85df9'

  url "https://repo.continuum.io/archive/Anaconda3-#{version}-MacOSX-x86_64.sh"
  name 'Continuum Analytics Anaconda'
  homepage 'https://www.continuum.io/why-anaconda'
  license :gratis

  depends_on macos: '>= :lion'
  container type: :naked

  installer script: "Anaconda3-#{version}-MacOSX-x86_64.sh",
            args:   ['-b'],
            sudo:   false

  uninstall delete: '~/anaconda3'

  caveats do
    path_environment_variable '~/anaconda3/bin'
  end
end
