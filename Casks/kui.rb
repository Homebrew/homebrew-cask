cask "kui" do
  arch arm: "arm64", intel: "x64"

  version "12.0.2"
  sha256 arm:   "a72e789b54c96bf569166f7af3473d6d35f8a37d5b7aa0a2eb6f7779ea02953a",
         intel: "ea621bba53fe6184826380052aacb968af4a0904d12a01ae74d74e3e948bf239"

  url "https://github.com/kubernetes-sigs/kui/releases/download/v#{version}/Kui-darwin-#{arch}.tar.bz2"
  name "Kui"
  desc "Hybrid command-line/UI development experience for cloud-native development"
  homepage "https://github.com/kubernetes-sigs/kui"

  app "Kui-darwin-#{arch}/Kui.app"
  binary "#{appdir}/Kui.app/Contents/Resources/kubectl-kui"

  zap trash: "~/Library/Application Support/Kui"
end
