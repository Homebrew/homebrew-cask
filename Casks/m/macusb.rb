cask "macusb" do
  version "2.1.1"
  sha256 "84b23f926b577f65e2e8cdce1a3f48c941b1740e8a42351e9c8de872859a5695"

  url "https://github.com/Kruszoneq/macUSB/releases/download/v#{version}/macUSB.#{version}.dmg",
      verified: "github.com/Kruszoneq/macUSB/"
  name "macUSB"
  desc "Tool to create bootable USB installers"
  homepage "https://kruszoneq.github.io/macUSB/"

  depends_on macos: ">= :sonoma"

  app "macUSB.app"

  zap trash: [
    "~/Library/Application Support/macUSB",
    "~/Library/Caches/com.kruszoneq.macusb",
    "~/Library/Preferences/com.kruszoneq.macusb.plist",
    "~/Library/Saved Application State/com.kruszoneq.macusb.savedState",
  ]
end
