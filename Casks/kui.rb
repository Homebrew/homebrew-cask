cask "kui" do
  arch arm: "arm64", intel: "x64"

  version "13.1.1"
  sha256 arm:   "f70457dcec307297cbefb5fb5c54c75135b469d71e16e01354865961c9590dcb",
         intel: "08ae6b2d3045730108519a27326ac7a7bdd16beec2bfa29931abdbe97669c380"

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
