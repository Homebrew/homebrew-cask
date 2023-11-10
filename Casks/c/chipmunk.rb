cask "chipmunk" do
  version "3.10.3"
  sha256 "136cd6cc31189015140f2b59b01bd8bd9a0197798caa767f2efcb0f08b9a395e"

  url "https://github.com/esrlabs/chipmunk/releases/download/#{version}/chipmunk@#{version}-darwin-portable.tgz"
  name "Chipmunk Log Analyzer & Viewer"
  desc "Log analysis tool"
  homepage "https://github.com/esrlabs/chipmunk/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "chipmunk.app"

  zap trash: "~/.chipmunk"
end
