cask 'anaconda' do
  version '4.0.0'
  sha256 '704a776c0cf3fcca6e0c5a1e6b6043728229cfac813bff28f003157771824036'

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
