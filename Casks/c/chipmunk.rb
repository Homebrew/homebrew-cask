cask "chipmunk" do
  arch arm: "-arm64"

  version "4.1.0"
  sha256 arm:   "6bffcf53f5771c9a7eb22028a52ad82a4b143ee108e8f78684b87b24a3396dea",
         intel: "d3d795538aa706ccd8008a78cbb920a4a2cce34d8eb4ffdedf6b7991954d617a"

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

  zap trash: [
    "~/.chipmunk",
    "~/Library/Application Support/Chipmunk",
  ]
end
