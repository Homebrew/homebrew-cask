cask 'kui' do
  version '8.11.2'
  sha256 'af177d1a9d88315b7b5acd9eee3f4e6dd53beea725b72372b9348217b45472ba'

  # github.com/IBM/kui was verified as official when first introduced to the cask
  url "https://github.com/IBM/kui/releases/download/v#{version}/Kui-darwin-x64.tar.bz2"
  appcast 'https://github.com/IBM/kui/releases.atom'
  name 'Kui'
  homepage 'https://kui.tools/'

  app 'Kui-darwin-x64/Kui.app'
  binary "#{appdir}/Kui.app/Contents/Resources/kubectl-kui"
end
