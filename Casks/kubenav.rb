cask "kubenav" do
  version "4.2.0"
  sha256 "48663c083142d93b91462975ef15a0a696ea1e9becf1e28610522411c36ba6fe"

  url "https://github.com/kubenav/kubenav/releases/download/v#{version}/kubenav-macos-universal.zip",
      verified: "github.com/kubenav/kubenav/"
  name "kubenav"
  desc "Navigator for your Kubernetes clusters right in your pocket"
  homepage "https://kubenav.io/"

  app "kubenav.app"
  binary "#{appdir}/kubenav.app/Contents/MacOS/kubenav"

  zap trash: "~/Library/Saved Application State/io.kubenav.kubenav.savedState"
end
