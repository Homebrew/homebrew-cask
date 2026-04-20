cask "chipmunk" do
  arch arm: "-arm64"

  version "3.19.5"
  sha256 arm:   "0aab53d51851f233603743c73b7c959a4afcbb5861b8420abe63cb8833e6ed16",
         intel: "3eb7b16b3ed7619de6c4bd5cdc7b9068a3925eee327e590cd6829e1895229f6e"

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
