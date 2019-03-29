cask 'scilab' do
  version '6.0.2'
  sha256 '109d3ee1ed76deec88b8e16d6d0530e823aca2081b6074d9d0d732ef252dc115'

  # utc.fr/~mottelet/scilab was verified as official when first introduced to the cask
  url "https://www.utc.fr/~mottelet/scilab/download/#{version}/scilab-#{version}-x86_64.dmg"
  appcast 'https://www.scilab.org/'
  name 'Scilab'
  homepage 'https://www.scilab.org/'

  depends_on macos: '>= :sierra'

  app "scilab-#{version}.app"

  caveats do
    depends_on_java '6'
  end
end
