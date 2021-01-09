cask "kui" do
  version "9.3.8"
  sha256 "0c4ff3ada2afd6c0233c372f988359b1c9ce0b3a9bc5adb0198cd481f067a247"

  url "https://github.com/IBM/kui/releases/download/v#{version}/Kui-darwin-x64.tar.bz2",
      verified: "github.com/IBM/kui/"
  appcast "https://github.com/IBM/kui/releases.atom"
  name "Kui"
  desc "Hybrid command-line/UI development experience for cloud-native development"
  homepage "https://kui.tools/"

  app "Kui-darwin-x64/Kui.app"
  binary "#{appdir}/Kui.app/Contents/Resources/kubectl-kui"
end
