cask 'scilab' do
  version '6.0.2'
  sha256 '307be532115eecc2cfbb3d5656f7424544368b972767cd3fc9616e6cf77d4a37'

  # utc.fr/~mottelet/scilab was verified as official when first introduced to the cask
  url "https://www.utc.fr/~mottelet/scilab/download/#{version}/scilab-#{version}-x86_64.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.scilab.org/download/'
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
