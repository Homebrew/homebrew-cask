cask "chipmunk" do
  arch arm: "-arm64"

  version "3.18.4"
  sha256 arm:   "33a62fb06e48ac4a361a5c5df2730c8c69f2e52b5ad2a9030d4d6b523a85d849",
         intel: "ac1bfd8525f5310fcdeaeab316703afdfe35f872477f074bfb97ca394b2c62af"

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
