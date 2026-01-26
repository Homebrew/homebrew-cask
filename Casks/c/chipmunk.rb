cask "chipmunk" do
  arch arm: "-arm64"

  version "3.19.4"
  sha256 arm:   "c87d4708097e1e44f71fb523622c56457672ca5c05b058d7f26f3384351ae88e",
         intel: "ab5ed16c8f8cb49268826504471eef88ff27ac72b7367eeded1a9fa9d6f7260c"

  url "https://github.com/esrlabs/chipmunk/releases/download/#{version}/chipmunk@#{version}-darwin#{arch}-portable.tgz"
  name "Chipmunk Log Analyzer & Viewer"
  desc "Log analysis tool"
  homepage "https://github.com/esrlabs/chipmunk/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "chipmunk.app"

  zap trash: "~/.chipmunk"
end
