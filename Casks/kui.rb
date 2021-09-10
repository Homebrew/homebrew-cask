cask "kui" do
  version "10.4.13"

  if Hardware::CPU.intel?
    url "https://github.com/kubernetes-sigs/kui/releases/download/v#{version}/Kui-darwin-x64.tar.bz2",
        verified: "github.com/kubernetes-sigs/kui/"
    sha256 "7adfc6807700549b3f2b299f181e5f7c63394c0319879314082484d7822a28af"
    app "Kui-darwin-x64/Kui.app"
  else
    url "https://github.com/kubernetes-sigs/kui/releases/download/v#{version}/Kui-darwin-arm64.tar.bz2",
        verified: "github.com/kubernetes-sigs/kui/"
    sha256 "ff2982297a4f55f834521460401ff53e8b4825bef11cf2aa7aafb916947b0948"
    app "Kui-darwin-arm64/Kui.app"
  end

  name "Kui"
  desc "Hybrid command-line/UI development experience for cloud-native development"
  homepage "https://kui.tools/"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "#{appdir}/Kui.app/Contents/Resources/kubectl-kui"

  zap trash: "~/Library/Application Support/Kui"
end
