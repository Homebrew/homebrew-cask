cask "kui" do
  version "9.2.2"
  sha256 "8892dcec46525fd823c2362412b08f5cd247aa204eb7aaf94c91c78d753d53d3"

  # github.com/IBM/kui was verified as official when first introduced to the cask
  url "https://github.com/IBM/kui/releases/download/v#{version}/Kui-darwin-x64.tar.bz2"
  appcast "https://github.com/IBM/kui/releases.atom"
  name "Kui"
  desc "Hybrid command-line/UI development experience for cloud-native development"
  homepage "https://kui.tools/"

  app "Kui-darwin-x64/Kui.app"
  binary "#{appdir}/Kui.app/Contents/Resources/kubectl-kui"
end
