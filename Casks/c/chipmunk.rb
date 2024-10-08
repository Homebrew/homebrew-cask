cask "chipmunk" do
  arch arm: "-arm64"

  version "3.13.2"
  sha256 arm:   "ce208997bba013e917f11a6c56310c74823b799f8f2deef298c07fb6dc9edd7b",
         intel: "0d7f08c879cae1e7bbbcb204c07c3dd9c3860999eafd5bf36338f6d0045b1463"

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
