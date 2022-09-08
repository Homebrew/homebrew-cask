cask "kui" do
  arch arm: "arm64", intel: "x64"

  version "12.0.3"
  sha256 arm:   "2b38f095b16abbfb9d44b4090c41c1b4946c26aaa236f6fd24c7055476bda4c1",
         intel: "628cd982e2b9218f2b9a3a26059c25ca19000280ea861f933d7f15829569f167"

  url "https://github.com/kubernetes-sigs/kui/releases/download/v#{version}/Kui-darwin-#{arch}.tar.bz2"
  name "Kui"
  desc "Hybrid command-line/UI development experience for cloud-native development"
  homepage "https://github.com/kubernetes-sigs/kui"

  app "Kui-darwin-#{arch}/Kui.app"
  binary "#{appdir}/Kui.app/Contents/Resources/kubectl-kui"

  zap trash: "~/Library/Application Support/Kui"
end
