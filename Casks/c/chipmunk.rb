cask "chipmunk" do
  arch arm: "-arm64"

  version "3.18.1"
  sha256 arm:   "c3436f1cfce52fb4ab8bd99af3546b3943d715306acf4f9247fbf73bd3bb18b8",
         intel: "90ef677fefcc596d816698c1940a7c4352d80e14ed71ffcc51626011f155c33a"

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
