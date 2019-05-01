cask 'scilab' do
  version '6.0.2'
  sha256 '4f0e5e9cbdac3fe2baa57b2b2535bc23fe5862e0e99502aa84ac41259b9e1e74'

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
