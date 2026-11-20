cask "speedcrunch" do
  version "1.2.0"
  sha256 "63eec4217498234dd5bc240ec0c08a3359ede110e1af0afc7fc0d577921fc44c"

  url "https://github.com/heldercorreia/speedcrunch/releases/download/v#{version}/SpeedCrunch-#{version}-macos-arm64.dmg"
  name "SpeedCrunch"
  desc "Scientific calculator"
  homepage "https://speedcrunch.org/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "SpeedCrunch.app"

  uninstall quit: "org.speedcrunch"

  zap trash: [
    "~/Library/Application Support/SpeedCrunch",
    "~/Library/Caches/SpeedCrunch",
    "~/Library/Preferences/org.speedcrunch.plist",
    "~/Library/Preferences/org.speedcrunch.SpeedCrunch.plist",
    "~/Library/Preferences/SpeedCrunch",
  ]
end
