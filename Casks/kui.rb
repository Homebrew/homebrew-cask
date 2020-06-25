cask 'kui' do
  version '8.10.3'
  sha256 'ea6159b33741c602147d97fb0fce88b56731721d64ed5e7b73e25e815935c411'

  # github.com/IBM/kui was verified as official when first introduced to the cask
  url "https://github.com/IBM/kui/releases/download/v#{version}/Kui-darwin-x64.tar.bz2"
  appcast 'https://github.com/IBM/kui/releases.atom'
  name 'Kui'
  homepage 'https://kui.tools/'

  app 'Kui-darwin-x64/Kui.app'
  binary "#{appdir}/Kui.app/Contents/Resources/kubectl-kui"
end
