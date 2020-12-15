cask "kui" do
  version "9.3.2"
  sha256 "4cd3f7da931203a6dec1fb5919ac4dfcd3e3d689d524a7be40ccb2202e0aaef1"

  url "https://github.com/IBM/kui/releases/download/v#{version}/Kui-darwin-x64.tar.bz2",
      verified: "github.com/IBM/kui/"
  appcast "https://github.com/IBM/kui/releases.atom"
  name "Kui"
  desc "Hybrid command-line/UI development experience for cloud-native development"
  homepage "https://kui.tools/"

  app "Kui-darwin-x64/Kui.app"
  binary "#{appdir}/Kui.app/Contents/Resources/kubectl-kui"
end
