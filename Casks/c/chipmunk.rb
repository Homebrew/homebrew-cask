cask "chipmunk" do
  arch arm: "-arm64"

  version "3.18.2"
  sha256 arm:   "ee4652822bdd224656d3ba521fff1e9fb834beb56d9090c721f7aac53a9c5212",
         intel: "58474426b89d220492d25f30d2d74ffda3f3fdf1057f8e2bb26ac091d017ed47"

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
