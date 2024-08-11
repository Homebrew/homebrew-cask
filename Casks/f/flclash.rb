cask "flclash" do
  arch arm: "arm64", intel: "amd64"

  version "0.8.52"
  sha256 arm:   "95bf6f5fb182f69534df978c0a2a86fdd5d2fe5a3de6bc22c2fa90b4be27c83d",
         intel: "7b5d985985abb1961680000b35f4951414a06ea4bab3c21123ea9b0c77cd02f8"

  url "https://github.com/chen08209/FlClash/releases/download/v#{version}/FlClash-#{version}-macos-#{arch}.dmg",
      verified: "github.com/chen08209/FlClash/"
  name "FlClash"
  desc "A multi-platform proxy client based on ClashMeta,simple and easy to use, open-source and ad-free."
  homepage "https://github.com/chen08209/FlClash"

  auto_updates true
  depends_on macos: ">= :catalina"

  app "FlClash.app"

  zap trash: [
    "~/Library/Application Support/com.clash.follow",
  ]
end
