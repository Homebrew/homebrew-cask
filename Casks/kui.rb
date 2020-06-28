cask 'kui' do
  version '8.10.5'
  sha256 '15562ff2b4c4252a2a494586b2321762db3d8b0e59b3f6431380952263110415'

  # github.com/IBM/kui was verified as official when first introduced to the cask
  url "https://github.com/IBM/kui/releases/download/v#{version}/Kui-darwin-x64.tar.bz2"
  appcast 'https://github.com/IBM/kui/releases.atom'
  name 'Kui'
  homepage 'https://kui.tools/'

  app 'Kui-darwin-x64/Kui.app'
  binary "#{appdir}/Kui.app/Contents/Resources/kubectl-kui"
end
