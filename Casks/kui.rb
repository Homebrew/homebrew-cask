cask "kui" do
  version "10.3.6"
  sha256 "d6a5b9b4095b820ca81b0f20f24959d408f9b2fc06b8f9c37590be1cdd279198"

  url "https://github.com/IBM/kui/releases/download/v#{version}/Kui-darwin-x64.tar.bz2",
      verified: "github.com/IBM/kui/"
  name "Kui"
  desc "Hybrid command-line/UI development experience for cloud-native development"
  homepage "https://kui.tools/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Kui-darwin-x64/Kui.app"
  binary "#{appdir}/Kui.app/Contents/Resources/kubectl-kui"
end
