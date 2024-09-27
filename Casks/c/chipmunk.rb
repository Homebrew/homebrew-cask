cask "chipmunk" do
  arch arm: "-arm64"

  version "3.13.1"
  sha256 arm:   "38068004a4e82297eed90c5510bf6206fb0d358a5d1739bdd13ed993cb675442",
         intel: "5c41b9e6b600134af4b89b13af9e0d713fd68df862a6e2ab7392bc2e53b63b53"

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
