cask "macusb" do
  version "2.1"
  sha256 "f2bfad552a898c9c7bae102b5bb36c607502802af2a1d664915a6a498e5ad19b"

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
