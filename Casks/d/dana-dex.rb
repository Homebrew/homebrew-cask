cask "dana-dex" do
  arch arm: "arm64", intel: "x64"

  version "1.17.0"
  sha256 arm:   "53469e28df5ef3670bd42019e5a97ec9af3518cdb2f15029e76dd75edea27c10",
         intel: "182cf25a97dde4eb6b046e66369b33e15a761140d64de601a48303803fad00b3"

  url "https://download.todesktop.com/201210b49whoa4k/Dex%20#{version}-#{arch}-mac.zip",
      verified: "download.todesktop.com/201210b49whoa4k/"
  name "Dex"
  desc "Personal CRM that reminds you to keep in touch"
  homepage "https://getdex.com/"

  livecheck do
    url "https://download.todesktop.com/201210b49whoa4k/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: ">= :high_sierra"

  app "Dex.app"

  zap trash: [
    "~/Library/Application Support/Dex",
    "~/Library/Logs/Dex",
    "~/Library/Preferences/com.todesktop.201210b49whoa4k.plist",
    "~/Library/Saved Application State/com.todesktop.201210b49whoa4k.savedState",
  ]
end
