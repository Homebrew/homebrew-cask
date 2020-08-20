cask "kui" do
  version "8.12.0"
  sha256 "9dc2153d69826cfa96e4101b4ec00dca46b2eb42da3b0631e9a9e61198155752"

  # github.com/IBM/kui was verified as official when first introduced to the cask
  url "https://github.com/IBM/kui/releases/download/v#{version}/Kui-darwin-x64.tar.bz2"
  appcast "https://github.com/IBM/kui/releases.atom"
  name "Kui"
  homepage "https://kui.tools/"

  app "Kui-darwin-x64/Kui.app"
  binary "#{appdir}/Kui.app/Contents/Resources/kubectl-kui"
end
