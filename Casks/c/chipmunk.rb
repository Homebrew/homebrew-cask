cask "chipmunk" do
  arch arm: "-arm64"

  version "3.16.5"
  sha256 arm:   "02a86927bffa4bdb17487be39653094b1f5265d74a6a74b95b0ffab9ec9abf35",
         intel: "48f3d9829791fcdb0ab3b4dc8932721728f9be2653bcd621a4929b3dfc0af7bb"

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
