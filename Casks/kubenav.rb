cask "kubenav" do
  version "4.2.2"
  sha256 "5feee1f53910d090c5ab70174aa2665937cc1a74c7fd5aec9a1fb63583d77ab1"

  url "https://github.com/kubenav/kubenav/releases/download/v#{version}/kubenav-macos-universal.zip",
      verified: "github.com/kubenav/kubenav/"
  name "kubenav"
  desc "Navigator for your Kubernetes clusters right in your pocket"
  homepage "https://kubenav.io/"

  app "kubenav.app"
  binary "#{appdir}/kubenav.app/Contents/MacOS/kubenav"

  zap trash: "~/Library/Saved Application State/io.kubenav.kubenav.savedState"
end
