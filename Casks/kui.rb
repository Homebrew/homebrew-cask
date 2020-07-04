cask 'kui' do
  version '8.10.8'
  sha256 '2ab7ac0fb492a6ee4a620470e51bfb84e7c566ebf0d66ff320e3251d52779e94'

  # github.com/IBM/kui was verified as official when first introduced to the cask
  url "https://github.com/IBM/kui/releases/download/v#{version}/Kui-darwin-x64.tar.bz2"
  appcast 'https://github.com/IBM/kui/releases.atom'
  name 'Kui'
  homepage 'https://kui.tools/'

  app 'Kui-darwin-x64/Kui.app'
  binary "#{appdir}/Kui.app/Contents/Resources/kubectl-kui"
end
