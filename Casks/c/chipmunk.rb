cask "chipmunk" do
  arch arm: "-arm64"

  version "3.19.3"
  sha256 arm:   "327c4bb4ec128e17d2f37122afbdb2e9d2e79ec5765e26f4c06af13e734b076e",
         intel: "698cdc5ea067bcf4a500670ee60027996b83acb4b1b206e2647094532a586a82"

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
