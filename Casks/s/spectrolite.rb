cask "spectrolite" do
  arch arm: "arm64", intel: "x64"

  version "0.22.2"
  sha256 arm:   "61a3881d0b8f80e4bf6967ee835e30fedf72c9f54c0d7fcd28caa166a168607f",
         intel: "434706d8433b3bc69b35fced32064eda40c5737aab22e106d28c1537aa9b2091"

  url "https://spectrolite.app/downloads/Spectrolite-#{version}-#{arch}.dmg"
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
