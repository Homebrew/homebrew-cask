cask "kui" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "10.7.0"

  url "https://github.com/kubernetes-sigs/kui/releases/download/v#{version}/Kui-darwin-x64.tar.bz2"
  if Hardware::CPU.intel?
    sha256 "5c7361652cba59b48d84ce1ed3013b30825b06a652f7a6b05f129013d319021b"
  else
    sha256 "846fca2c083916320be3b3590b0d3738e95c89becd6ecb5644ce20700719275a"
  end

  name "Kui"
  desc "Hybrid command-line/UI development experience for cloud-native development"
  homepage "https://github.com/kubernetes-sigs/kui"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Kui-darwin-#{arch}/Kui.app"
  binary "#{appdir}/Kui.app/Contents/Resources/kubectl-kui"

  zap trash: "~/Library/Application Support/Kui"
end
