cask "kui" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "10.8.1"

  url "https://github.com/kubernetes-sigs/kui/releases/download/v#{version}/Kui-darwin-#{arch}.tar.bz2"
  if Hardware::CPU.intel?
    sha256 "5cb1335f09a766688df98c390985aa5edf5dd9d38cbeccbbc641339972238f10"
  else
    sha256 "6171a8388a3279be61747ff21e8c13b6669dc6ac899dd55c241b1f193ebd93a2"
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
