cask "chipmunk" do
  arch arm: "-arm64"

  version "3.13.5"
  sha256 arm:   "0d6776ad9bd7dbcccaca85ef7cd6d80d4febfb3d9f6774911b5599f96dbd7024",
         intel: "c5f62599cdaf7ec91460c65d6e2158a732cb4f6f7967acc784249dcb278e0a66"

  url "https://github.com/esrlabs/chipmunk/releases/download/#{version}/chipmunk@#{version}-darwin#{arch}-portable.tgz"
  name "Chipmunk Log Analyzer & Viewer"
  desc "Log analysis tool"
  homepage "https://github.com/esrlabs/chipmunk/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "chipmunk.app"

  zap trash: "~/.chipmunk"
end
