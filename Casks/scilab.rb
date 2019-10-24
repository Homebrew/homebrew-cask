cask 'scilab' do
  version '6.0.2'
  sha256 '136a9d405cebd425458076073a84dc256f69f1d4b8dc1c87612e6cc4bbf6ab5d'

  # utc.fr/~mottelet/scilab was verified as official when first introduced to the cask
  url "https://www.utc.fr/~mottelet/scilab/download/#{version}/scilab-#{version}-x86_64.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.scilab.org/download/'
  name 'Scilab'
  homepage 'https://www.scilab.org/'

  depends_on macos: '>= :sierra'

  app "scilab-#{version}.app"
  binary "Scilab-#{version}.app/Contents/MacOS/bin/scilab"
  binary "Scilab-#{version}.app/Contents/MacOS/bin/scilab-cli"

  caveats do
    depends_on_java '8'
  end
end
