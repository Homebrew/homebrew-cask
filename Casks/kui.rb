cask 'kui' do
  version '8.10.9'
  sha256 '707fbbed0a1d5e1064a7e25c1bea5c7a1131305f28ac3700595afe418911d9b9'

  # github.com/IBM/kui was verified as official when first introduced to the cask
  url "https://github.com/IBM/kui/releases/download/v#{version}/Kui-darwin-x64.tar.bz2"
  appcast 'https://github.com/IBM/kui/releases.atom'
  name 'Kui'
  homepage 'https://kui.tools/'

  app 'Kui-darwin-x64/Kui.app'
  binary "#{appdir}/Kui.app/Contents/Resources/kubectl-kui"
end
