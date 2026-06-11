cask "chipmunk" do
  arch arm: "-arm64"

  version "4.0.0"
  sha256 arm:   "8bb4ef32cfb97cda9058d4ebfa16a67304f9da9a11b302f7dcdfc53cf6e8d87c",
         intel: "a1ca6a2a94adf754200b1b2f76b7fb54c1ee753a6574fd965cd33f862b1f0cd6"

  url "https://github.com/esrlabs/chipmunk/releases/download/#{version}/chipmunk@#{version}-darwin#{arch}-portable.tgz"
  name "Chipmunk Log Analyzer & Viewer"
  desc "Log analysis tool"
  homepage "https://github.com/esrlabs/chipmunk/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :big_sur

  app "chipmunk.app"

  zap trash: "~/.chipmunk"
end
