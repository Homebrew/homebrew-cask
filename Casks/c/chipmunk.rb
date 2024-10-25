cask "chipmunk" do
  arch arm: "-arm64"

  version "3.14.0"
  sha256 arm:   "9fbcabadfa3ffdef55b76c24e9f314fae075ac16b74a7483530df0b0e0465b20",
         intel: "295219cf9bc50b48a25d69963e6a64710c74cdd1fcdae488ff44237ee3157dd5"

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
