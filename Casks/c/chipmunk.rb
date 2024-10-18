cask "chipmunk" do
  arch arm: "-arm64"

  version "3.13.3"
  sha256 arm:   "908e81cf75516aaeab55227ad667183063c5bac86f1fc98a2f4a2685a945ede0",
         intel: "231c1eea526af3bf9e106dfb5d3ce76c51cb56706c8050d8b7532887c3b456c1"

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
