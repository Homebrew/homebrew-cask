cask "chipmunk" do
  arch arm: "-arm64"

  version "3.16.6"
  sha256 arm:   "ec76f4384147f9a423b80d7005d7e18176050e1df83e613bef15c6c9078e14d6",
         intel: "507e890210ff883594a978819fb12de875196c646ee5ecef61b84e83fd8392d8"

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
