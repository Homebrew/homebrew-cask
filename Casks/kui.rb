cask "kui" do
  version "10.2.0"
  sha256 "5de4295d41fcca66b408247caa696cbc8ec2f8cf4fe5b47ce6cdbb3f94c61453"

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
