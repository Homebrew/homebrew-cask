cask "chipmunk" do
  arch arm: "-arm64"

  version "4.3.0"
  sha256 arm:   "b3323285d314574365e3803f1c22791c4e60c6ca911965bebe3ce13619d6a123",
         intel: "8f23bed186bf3e1da20241007374825dbe420cb2891d0d9da08ea267fdec3b16"

  url "https://github.com/esrlabs/chipmunk/releases/download/#{version}/chipmunk@#{version}-darwin#{arch}-portable.tgz"
  name "Chipmunk Log Analyzer & Viewer"
  desc "Log analysis tool"
  homepage "https://github.com/esrlabs/chipmunk/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on :macos

  app "chipmunk.app"

  zap trash: [
    "~/.chipmunk",
    "~/Library/Application Support/Chipmunk",
  ]
end
