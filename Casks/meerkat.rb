cask 'meerkat' do
  version '1.5.3'
  sha256 'bf5a5e492463a7ec1c3e959a55227dd6fcec5bb902124f9bde819bf4f5933982'

  url "http://codesorcery.net/downloads/Meerkat_#{version}.dmg"
  appcast 'http://codesorcery.net/appcasts/Meerkat.xml',
          :sha256 => '927c83f3c9abee7eb8c7d403e0fa8278d3a18588e3d0ca76aac1eed153125e23'
  name 'Meerkat'
  homepage 'http://codesorcery.net/meerkat'
  license :gratis

  app 'Meerkat.app'

  caveats do
    discontinued
    free_license 'http://codesorcery.net/meerkat'
  end
end
