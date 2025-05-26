cask "chipmunk" do
  arch arm: "-arm64"

  version "3.17.2"
  sha256 arm:   "c543f2e3323164be535ef6fc316fbad7270adb057d473447732cf3ad0fdb1920",
         intel: "41fe36106f3b06985bcea51eb4c8d16e5c8b3b0100728add92f9b11796e089bc"

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
