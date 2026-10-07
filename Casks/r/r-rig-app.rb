cask "r-rig-app" do
  arch arm: "arm64", intel: "x86_64"

  version "0.11.0"
  sha256 arm:   "751654ba7b47bd142ba777aaa1b7d38a6737bd55c892e837996b69c4de65e693",
         intel: "1a1e879084eb13bdb45ad63b3eda70ab66d0e10fc9a85827f6d491a53dc7c658"

  url "https://github.com/r-lib/rig/releases/download/v#{version}/rig-#{version}-macOS-#{arch}.pkg"
  name "r-rig-app"
  desc "R Installation Manager"
  homepage "https://github.com/r-lib/rig"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  pkg "rig-#{version}-macOS-#{arch}.pkg"

  uninstall pkgutil: "com.gaborcsardi.rig"

  # No zap stanza required
end
