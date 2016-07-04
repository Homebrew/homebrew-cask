cask 'anaconda' do
  version '4.1.0'
  sha256 '4c45c8d75665fa5194ebe4e355d3427f5aa385f77eb2b5002c0c78d8ae7f2200'

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
