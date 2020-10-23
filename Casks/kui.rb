cask "kui" do
  version "9.0.6"
  sha256 "20089194a32cb7600c306c69dc7c643cc8d214d2509cdb383dce5f280c641433"

  # github.com/IBM/kui was verified as official when first introduced to the cask
  url "https://github.com/IBM/kui/releases/download/v#{version}/Kui-darwin-x64.tar.bz2"
  appcast "https://github.com/IBM/kui/releases.atom"
  name "Kui"
  desc "Hybrid command-line/UI development experience for cloud-native development"
  homepage "https://kui.tools/"

  app "Kui-darwin-x64/Kui.app"
  binary "#{appdir}/Kui.app/Contents/Resources/kubectl-kui"
end
