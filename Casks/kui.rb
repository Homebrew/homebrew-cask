cask "kui" do
  arch arm: "arm64", intel: "x64"

  version "12.2.0"
  sha256 arm:   "fbc550f4a30bc7d749e16c382205b22c031d55466d1c196b8d10d805398cb8e4",
         intel: "71221cbf983b30360d48d1af992d92752c5a837bc0bf113aa06a2463807309a1"

  url "https://github.com/kubernetes-sigs/kui/releases/download/v#{version}/Kui-darwin-#{arch}.tar.bz2"
  name "Kui"
  desc "Hybrid command-line/UI development experience for cloud-native development"
  homepage "https://github.com/kubernetes-sigs/kui"

  app "Kui-darwin-#{arch}/Kui.app"
  binary "#{appdir}/Kui.app/Contents/Resources/kubectl-kui"

  zap trash: "~/Library/Application Support/Kui"
end
