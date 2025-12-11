cask "chipmunk" do
  arch arm: "-arm64"

  version "3.19.2"
  sha256 arm:   "2d9c636c41fe6fba380a5d231ca45e4f30c48ae52c3bcdc2124c3592d66e5645",
         intel: "b0f3a5450c3fb6445f65221939a107b9b8a8da5c3c0aac8dfab3163980012d9b"

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
