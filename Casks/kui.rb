cask "kui" do
  arch arm: "arm64", intel: "x64"

  version "13.1.3"
  sha256 arm:   "eb3f5d77f59bdf6c6079eda955e8f0aaa2988f52f5d2951632fce48eb4cdce81",
         intel: "cec6e3b978687fead6c0cca73fbba5dd62ce9c3d66b5b51df765434c5f85cce0"

  url "https://github.com/kubernetes-sigs/kui/releases/download/v#{version}/Kui-darwin-#{arch}.tar.bz2"
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
