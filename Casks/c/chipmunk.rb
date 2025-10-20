cask "chipmunk" do
  arch arm: "-arm64"

  version "3.19.1"
  sha256 arm:   "7308d84b3a30ec91b670ecfa5c842b85018df66093a3e51be771b2f251e5cbe0",
         intel: "b9a6bc12cb58f2272dedf6d7db0d884687bc02557699f0d05703215093742e3b"

  url "https://github.com/esrlabs/chipmunk/releases/download/#{version}/chipmunk@#{version}-darwin#{arch}-portable.tgz"
  name "Chipmunk Log Analyzer & Viewer"
  desc "Log analysis tool"
  homepage "https://github.com/esrlabs/chipmunk/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "chipmunk.app"

  zap trash: "~/.chipmunk"
end
