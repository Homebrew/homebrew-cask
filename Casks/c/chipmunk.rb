cask "chipmunk" do
  version "3.9.16"
  sha256 "617f822ce24b2434a07a03df72411b54ff1613868015a9f7a0418a730709e871"

  url "https://github.com/esrlabs/chipmunk/releases/download/#{version}/chipmunk@#{version}-darwin-portable.tgz"
  name "Chipmunk Log Analyzer & Viewer"
  desc "Log analysis tool"
  homepage "https://github.com/esrlabs/chipmunk/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "chipmunk.app"

  zap trash: "~/.chipmunk"
end
