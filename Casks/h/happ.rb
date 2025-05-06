cask "happ" do
  arch arm: "arm64", intel: "x86_64"

  version "alpha_0.0.24"
  sha256 :no_check

  url "https://github.com/Happ-proxy/happ-desktop/releases/download/#{version}/Happ.macOS.#{arch}.app.tar.gz",
      verified: "github.com/Happ-proxy/happ-desktop/releases/"
  name "Happ-desktop"
  desc "Platform for building proxies to bypass network restrictions"
  homepage "https://happ.su/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :big_sur

  app "Happ.app"

  zap trash: [
    "~/Desktop/happ-cask",
    "~/Library/Preferences/Happ",
  ]

  caveats <<~EOS
    This application requires Rosetta 2 to run on Apple Silicon Macs.
    You can install Rosetta 2 by running:
      softwareupdate --install-rosetta
  EOS
end
