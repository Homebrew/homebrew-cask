cask "r-rig-app" do
  arch arm: "arm64", intel: "x86_64"

  version "0.11.1"
  sha256 arm:   "cbb7adb7fa26075c60937129d97230bf3d5d120e1aab2879462c3413a61b3d25",
         intel: "969e7872dfb4af5494f988966aafe17d28cb182da1be41ab7b0826300f6c3ebe"

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

  zap :not_required
end
