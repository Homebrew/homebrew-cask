cask "chipmunk" do
  arch arm: "-arm64"

  version "3.14.3"
  sha256 arm:   "398a69dc1dc129e7232d71d487eb1269225bf0677b518f41e0bdec1a4a9cef0d",
         intel: "c790886b0b5ff5c078247353e653c4430432493bec3e05ff54d6bcdf530cc41c"

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
