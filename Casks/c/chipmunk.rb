cask "chipmunk" do
  version "3.12.4"
  sha256 "718dedfae7d3dd9eee86d34b32619dbabc720efbf175e01c365fcc681b8c711d"

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
