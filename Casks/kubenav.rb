cask "kubenav" do
  version "4.2.1"
  sha256 "0fb493218a3c001e218c088e476d9f2946c38e6049181296d3211a7f186d4aae"

  url "https://github.com/kubenav/kubenav/releases/download/v#{version}/kubenav-macos-universal.zip",
      verified: "github.com/kubenav/kubenav/"
  name "kubenav"
  desc "Navigator for your Kubernetes clusters right in your pocket"
  homepage "https://kubenav.io/"

  app "kubenav.app"
  binary "#{appdir}/kubenav.app/Contents/MacOS/kubenav"

  zap trash: "~/Library/Saved Application State/io.kubenav.kubenav.savedState"
end
