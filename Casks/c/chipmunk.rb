cask "chipmunk" do
  arch arm: "-arm64"

  version "3.16.1"
  sha256 arm:   "efa3c9ae7014e12a8d57826637a78191f766694a2b166644a9eb08bb8ae4a240",
         intel: "79c08fff5be3af19b54b0fc6c5ba332ecc45541cf77dd45c7ec2c7562d658ec3"

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
