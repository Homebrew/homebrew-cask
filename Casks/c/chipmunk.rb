cask "chipmunk" do
  arch arm: "-arm64"

  version "3.18.3"
  sha256 arm:   "03ff086c63b1364f99de9a257daa400942ff3dab28b5330c17b69652c07b7ed9",
         intel: "a4cc0c829cfd7ec6ba46da452caa27095bca2acaa91a9382b941e8f9f38622f1"

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
