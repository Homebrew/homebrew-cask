cask "kubenav" do
  version "4.2.3"
  sha256 "663785d1dfd9fbbfd9abfe5cf5a86dee40fd8c6ce6fd02ed73f446bf28414fb4"

  url "https://github.com/kubenav/kubenav/releases/download/v#{version}/kubenav-macos-universal.zip",
      verified: "github.com/kubenav/kubenav/"
  name "kubenav"
  desc "Navigator for your Kubernetes clusters right in your pocket"
  homepage "https://kubenav.io/"

  app "kubenav.app"
  binary "#{appdir}/kubenav.app/Contents/MacOS/kubenav"

  zap trash: "~/Library/Saved Application State/io.kubenav.kubenav.savedState"
end
