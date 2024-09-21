cask "chipmunk" do
  arch arm: "-arm64"

  version "3.13.0"
  sha256 arm:   "254a8ee08d93ff1454fce58b27abe629bb2ad867c9d9785aa0583ee5a13e095d",
         intel: "074126d8c82fc706323ba8a7882736e416ee3f1828861c60587b46ac26a7cf5d"

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
