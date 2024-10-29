cask "chipmunk" do
  arch arm: "-arm64"

  version "3.14.1"
  sha256 arm:   "af4620127f4dc81083430564f778d33f974f85f8837bde8a688161fdae31a1f4",
         intel: "6666f6ee7d0b74080defcf774f8647b4ba0f4809d5f83594e265f6458ae3ea0c"

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
