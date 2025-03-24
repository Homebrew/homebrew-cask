cask "chipmunk" do
  arch arm: "-arm64"

  version "3.16.4"
  sha256 arm:   "c6e3f35f2fd7b337d528272e407580219e9998131e0e085f7f788784e7176750",
         intel: "0820bd4d7d5f60d691250f889e505d105b775410e8c57ef9c5ce8f76a0caca6d"

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
