cask "chipmunk" do
  arch arm: "-arm64"

  version "3.19.0"
  sha256 arm:   "8981b12660bfa756fcc66aa800b2ed04c49781b390795ecd2e48ab80a6f493d9",
         intel: "50dcea51b645cd6c08f7a0bdec53989828887c7aaf94cc9658d7f89cd13461a5"

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
