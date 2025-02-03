cask "chipmunk" do
  arch arm: "-arm64"

  version "3.15.3"
  sha256 arm:   "65fbcd3efda0756ca6e3714f7fc5abcf0284bccf12947ca98e807bcb337d0216",
         intel: "161ad1fe0f54d16f72a143b49392c1ed3ee589d82acd0055aa15e18c7cd567ca"

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
