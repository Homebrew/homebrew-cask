cask "macusb" do
  version "2.3.1"
  sha256 "39caeb0f4abb0839ee370031c20f802bdd1942404ec79c1b9c835f6eb1083d7c"

  url "https://github.com/Kruszoneq/macUSB/releases/download/v#{version}/macUSB.#{version}.dmg",
      verified: "github.com/Kruszoneq/macUSB/"
  name "macUSB"
  desc "Tool to create bootable USB installers"
  homepage "https://kruszoneq.github.io/macUSB/"

  depends_on macos: :sonoma

  app "macUSB.app"

  zap trash: [
    "~/Library/Application Support/macUSB",
    "~/Library/Caches/com.kruszoneq.macusb",
    "~/Library/Preferences/com.kruszoneq.macusb.plist",
    "~/Library/Saved Application State/com.kruszoneq.macusb.savedState",
  ]
end
