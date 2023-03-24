cask "kubenav" do
  version "4.1.0"
  sha256 "c821d77a6b5760ef95ee6f24cb6f9a843d8962f22ec0bb63a3a9c001214788ba"

  url "https://github.com/kubenav/kubenav/releases/download/v#{version}/kubenav-macos-universal.zip",
      verified: "github.com/kubenav/kubenav/"
  name "kubenav"
  desc "Navigator for your Kubernetes clusters right in your pocket"
  homepage "https://kubenav.io/"

  app "kubenav.app"
  binary "#{appdir}/kubenav.app/Contents/MacOS/kubenav"
end
