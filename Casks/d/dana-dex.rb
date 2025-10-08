cask "dana-dex" do
  arch arm: "arm64", intel: "x64"

  version "1.19.0"
  sha256 arm:   "0408cb958bab2e4306bcfe81aa83a5e6bd871d31a685b225df0c6f1d2e74fcd2",
         intel: "9d19121fc8382a3b4a544824e40192fdd1549a55490680ad53f87d3031c2a5a6"

  url "https://download.todesktop.com/201210b49whoa4k/Dex%20#{version}-#{arch}-mac.zip",
      verified: "download.todesktop.com/201210b49whoa4k/"
  name "Dex"
  desc "Personal CRM that reminds you to keep in touch"
  homepage "https://getdex.com/"

  livecheck do
    url "https://download.todesktop.com/201210b49whoa4k/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: ">= :monterey"

  app "Dex.app"

  zap trash: [
    "~/Library/Application Support/Dex",
    "~/Library/Logs/Dex",
    "~/Library/Preferences/com.todesktop.201210b49whoa4k.plist",
    "~/Library/Saved Application State/com.todesktop.201210b49whoa4k.savedState",
  ]
end
