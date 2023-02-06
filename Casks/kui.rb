cask "kui" do
  arch arm: "arm64", intel: "x64"

  version "13.1.0"
  sha256 arm:   "8dfe1e2639303fbae886162f0d6733e33fe55544771ff347c3ea1a6ded68f843",
         intel: "e1bbb59049956be866bfcd01977413f0a83c68b30d5d33cb0a01e9721b03d88a"

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
