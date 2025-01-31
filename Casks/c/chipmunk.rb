cask "chipmunk" do
  arch arm: "-arm64"

  version "3.15.2"
  sha256 arm:   "2abdcfac527f647d75e01187d39895ea00cd9676aaa48d7e7f4e7728c3dfa9a6",
         intel: "8482bd9b7355979a82512e7eb637479ffa0b77fd4d2e47cdc5214bef54c8aa13"

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
