cask "kubenav" do
  version "4.0.0"
  sha256 "be1c5a65de00ed7cea60348dd5efd46b1e6836b90969e15dc84e76f72c2b5a2d"

  url "https://github.com/kubenav/kubenav/releases/download/v#{version}/kubenav-macos-universal.zip",
      verified: "github.com/kubenav/kubenav/"
  name "kubenav"
  desc "Navigator for your Kubernetes clusters right in your pocket"
  homepage "https://kubenav.io/"

  app "kubenav.app"
  binary "#{appdir}/kubenav.app/Contents/MacOS/kubenav"
end
