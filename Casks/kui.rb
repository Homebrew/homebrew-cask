cask "kui" do
  arch arm: "arm64", intel: "x64"

  version "12.1.0"
  sha256 arm:   "3b3c654dc37842ee268147c97bec45fc1efc416289037df6109a538e10c57155",
         intel: "42d45fbfaca87f17e06344c3f444b689c59dadd84e5e2e98d9c81d40a03e18df"

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
