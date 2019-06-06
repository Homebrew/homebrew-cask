cask 'scilab' do
  version '6.0.2'
  sha256 'e3f0f2117ae62914aca9053f4d3cdb3c8e5d15925a8ea9ff109fb953654ac0f9'

  # utc.fr/~mottelet/scilab was verified as official when first introduced to the cask
  url "https://www.utc.fr/~mottelet/scilab/download/#{version}/scilab-#{version}-x86_64.dmg"
  appcast 'https://www.scilab.org/'
  name 'Scilab'
  homepage 'https://www.scilab.org/'

  depends_on macos: '>= :sierra'

  app "scilab-#{version}.app"
  binary "#{appdir}/Scilab-#{version}.app/Contents/MacOS/bin/scilab"
  binary "#{appdir}/Scilab-#{version}.app/Contents/MacOS/bin/scilab-cli"

  caveats do
    depends_on_java '6'
  end
end
