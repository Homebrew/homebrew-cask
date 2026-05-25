cask "rowboat" do
  arch arm: "arm64", intel: "x64"

  version "0.4.8"
  sha256 arm:   "bbbbef9d0bf43123373cf77ac468810f7616cd7ac4c0e5f54b938cbab923fb74",
         intel: "cd0fc76c5443d0a302491318c833d7e87767c215c16bd0ece8b5cbfb1e609ba4"

  url "https://github.com/rowboatlabs/rowboat/releases/download/v#{version}/Rowboat-darwin-#{arch}-#{version}.zip",
      verified: "github.com/rowboatlabs/rowboat/"
  name "Rowboat"
  desc "Open-source AI coworker, with memory"
  homepage "https://www.rowboatlabs.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "rowboat.app"

  zap trash: [
    "~/.rowboat",
    "~/Library/Application Support/Rowboat",
  ]
end
