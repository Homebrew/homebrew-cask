cask "chipmunk" do
  arch arm: "-arm64"

  version "4.2.0"
  sha256 arm:   "8326d8204e2c2739aa18f242b48d9467a1b4068f80e69abacc9f4a344374c96f",
         intel: "049329b77017ed542b47957f4f262d841585bcbe274a90af6ad589831cf48b98"

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
