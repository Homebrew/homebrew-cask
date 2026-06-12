cask "chipmunk" do
  arch arm: "-arm64"

  version "4.0.1"
  sha256 arm:   "59b326d418ac0f99fd05f962f5f06c8523c1157060f192bed62212e77ea44aa8",
         intel: "113f98385bc5b5df6da19be2bd105512c3f71a7afa2e8d5008d23377730661ce"

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
