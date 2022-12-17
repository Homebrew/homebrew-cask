cask "kui" do
  arch arm: "arm64", intel: "x64"

  version "12.2.0"
  sha256 arm:   "74fcfa060ddd6beae2ce620f917e0f75436eabd09ca32317bd6f47d8e3eaa145",
         intel: "e1d246b8d0daaa3e03378f3d0cb826363ee985a7f26e1fe02e3e533c65e59857"

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
