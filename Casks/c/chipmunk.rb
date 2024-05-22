cask "chipmunk" do
  version "3.12.7"
  sha256 "b594c74cdd235ee6f8817a6ac20beb6b8b2498ae0b5fa31b41d7de558a6da457"

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
