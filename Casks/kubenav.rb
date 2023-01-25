cask "kubenav" do
  version "4.0.1"
  sha256 "0e73d8fca6f625b6e46eb09ac98ed91d756144de15612428aa259b1ab9eebf03"

  url "https://github.com/kubenav/kubenav/releases/download/v#{version}/kubenav-macos-universal.zip",
      verified: "github.com/kubenav/kubenav/"
  name "kubenav"
  desc "Navigator for your Kubernetes clusters right in your pocket"
  homepage "https://kubenav.io/"

  app "kubenav.app"
  binary "#{appdir}/kubenav.app/Contents/MacOS/kubenav"
end
