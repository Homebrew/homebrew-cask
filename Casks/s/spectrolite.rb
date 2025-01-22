cask "spectrolite" do
  arch arm: "-silicon"

  version "0.22.1"
  sha256 intel: "465b4abb9413a53050c20e2adb4f95ffb9747b6927c5df35d3f5d6e1c7f633b2",
         arm:   "42840adc89c91f371426588f20d8789c1769605f293180d8af0fd13cad929629"

  url "https://spectrolite.app/downloads/Spectrolite#{arch}.dmg"
  name "Spectrolite"
  desc "App for making risograph prints"
  homepage "https://spectrolite.app/"

  livecheck do
    url "https://d398dq9v5f85fz.cloudfront.net/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Spectrolite.app"

  zap trash: [
    "~/Library/Application Support/spectrolite",
    "~/Library/Logs/Spectrolite",
    "~/Library/Preferences/com.electron.spectrolite.plist",
    "~/Library/Saved Application State/com.electron.spectrolite.savedState",
  ]
end
