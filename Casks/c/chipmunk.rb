cask "chipmunk" do
  version "3.10.7"
  sha256 "0199285fba4fcd576584674a46cae78641bbd63f771424137c2c4a1c4d8f6af5"

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
