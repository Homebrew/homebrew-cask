cask "kui" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "10.8.2"

  url "https://github.com/kubernetes-sigs/kui/releases/download/v#{version}/Kui-darwin-#{arch}.tar.bz2"
  if Hardware::CPU.intel?
    sha256 "4d2fe54d3cc167ca93f9c1586c59ef53e2d8943dab1e4ea09522591b65871bfb"
  else
    sha256 "807e6a17b808cb9a0ae6edda28ce2e12d9da3e9c2c98e53ffb2e7d660aa9c2ad"
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
