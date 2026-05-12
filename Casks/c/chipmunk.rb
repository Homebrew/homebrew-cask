cask "chipmunk" do
  arch arm: "-arm64"

  version "3.19.6"
  sha256 arm:   "6264d1ca3e29cf52067e86232e1c07ae382b267568057bdc8d5e8edf2dd37ce1",
         intel: "7f05f7265278917c48e13cc27239d1cd39629029417bdd074f6160cc6fba40e0"

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

  zap trash: "~/.chipmunk"
end
