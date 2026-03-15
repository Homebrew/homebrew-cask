cask "gram" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.0.0"
  sha256 arm:   "5f2518b3cc8baa27b1166e42b8d6e811aae795b84e6b1110348da926570e6f8e",
         intel: "e49f76ac1ddaa26da00fd358596088c0e7d57d10947541e7fc3489472dbcc9df"

  url "https://codeberg.org/GramEditor/gram/releases/download/#{version}/Gram-mac-#{arch}-#{version}.dmg",
      verified: "codeberg.org/GramEditor/"
  name "Gram"
  desc "Code editor focused on stability, without AI, subscriptions, or telemetry"
  homepage "https://gram.liten.app/"

  depends_on macos: ">= :catalina"

  app "Gram.app"

  zap trash: [
    "~/Library/Application Support/Gram",
    "~/Library/Caches/Gram",
    "~/Library/Logs/Gram",
    "~/Library/Preferences/se.ziran.Gram.plist",
  ]
end
