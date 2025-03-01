cask "chipmunk" do
  arch arm: "-arm64"

  version "3.16.0"
  sha256 arm:   "c25f0e47b393afe9ff992096e2a98b6e011850bed999823818a92ce5675c8a76",
         intel: "ecc69e77ee93c672ed7aff14ca86ff0776f3d0210f67784bb00fe671bd66d77d"

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
