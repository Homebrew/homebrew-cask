cask "chipmunk" do
  arch arm: "-arm64"

  version "3.18.6"
  sha256 arm:   "7a49697f6315900bdc80635d8c1e2f379ca568e04a6088222db73a4e4eb90b93",
         intel: "882bda3bf59a954d1236fe7c5d390f620d1360da64c6cffd653a76c458bd2755"

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
