cask "kui" do
  arch arm: "arm64", intel: "x64"

  version "12.0.0"
  sha256 arm:   "e302dc15f45406a66aac75976669f05bbdf65deeb9553481ab487b4bdd327611",
         intel: "1522175683efb7cc8be1d88a6da2e3e4b78a105f2298d09fe4be17e008566e8f"

  url "https://github.com/kubernetes-sigs/kui/releases/download/v#{version}/Kui-darwin-#{arch}.tar.bz2"
  name "Kui"
  desc "Hybrid command-line/UI development experience for cloud-native development"
  homepage "https://github.com/kubernetes-sigs/kui"

  app "Kui-darwin-#{arch}/Kui.app"
  binary "#{appdir}/Kui.app/Contents/Resources/kubectl-kui"

  zap trash: "~/Library/Application Support/Kui"
end
