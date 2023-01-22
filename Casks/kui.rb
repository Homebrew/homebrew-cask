cask "kui" do
  arch arm: "arm64", intel: "x64"

  version "13.0.0"
  sha256 arm:   "d040c8bd3fe1fc2c375eba1243bca43534703cb7c3d9a0c490931a4d8bf66363",
         intel: "b9317685b509ba229d18c7cf4e5e6006a9688b4c88b28250e8f0c0b8214a72d4"

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
