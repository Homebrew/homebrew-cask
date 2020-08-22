cask "kui" do
  version "8.12.1"
  sha256 "a13447146fafbacb95d4afbf0c037ddd146d4b7c63a5cb418754c1c01c0643c3"

  # github.com/IBM/kui was verified as official when first introduced to the cask
  url "https://github.com/IBM/kui/releases/download/v#{version}/Kui-darwin-x64.tar.bz2"
  appcast "https://github.com/IBM/kui/releases.atom"
  name "Kui"
  homepage "https://kui.tools/"

  app "Kui-darwin-x64/Kui.app"
  binary "#{appdir}/Kui.app/Contents/Resources/kubectl-kui"
end
