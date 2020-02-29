cask 'scilab' do
  version '6.0.2'
  sha256 'aec8b67c29fb93c7fbae85e8b42d96f908e893ca680fb2d3e4fbb7012d8c8720'

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
    depends_on_java '8'
  end
end
