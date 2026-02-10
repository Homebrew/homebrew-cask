cask "castr" do
  arch arm: "arm64", intel: "x64"

  version "3.1.0"
  sha256 arm:   "bb1876f1ba051f08c7bf32e6681341bf03c8c410267294e4490c9e357fb16455",
         intel: "c141e266d366217d02e9da46e3def66402da833a365437ad7372d7154d1cfc06"

  url "https://download.todesktop.com/210610elr9v3cm6/Castr%20#{version}-#{arch}-mac.zip",
      verified: "download.todesktop.com/210610elr9v3cm6/"
  name "castr"
  desc "Desktop application for controlling Castr streaming platform"
  homepage "https://castr.io/"

  livecheck do
    url "https://download.todesktop.com/210610elr9v3cm6/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Castr.app"

  zap trash: [
    "~/Library/Application Support/Castr",
    "~/Library/Logs/Castr",
  ]
end
