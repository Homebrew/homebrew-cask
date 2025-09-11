cask "chipmunk" do
  arch arm: "-arm64"

  version "3.18.7"
  sha256 arm:   "d2aecfadd1661b438024f99e8eba4fd45d4bbeb822dca22fa6294042b5f79a63",
         intel: "0d601c290a9cad44bd6f0baf303e8b7c1051d8103893b112838060f743d83188"

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
