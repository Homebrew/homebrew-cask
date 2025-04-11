cask "chipmunk" do
  arch arm: "-arm64"

  version "3.17.0"
  sha256 arm:   "2867e65e121f389ca3c439f76f7a2bd62347709177ce72b832f5c8faecd7a97a",
         intel: "75b5cac1e431ec75cd12d34dfdac2ba62c7986fe58f90516a61fd85e6950d6df"

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
