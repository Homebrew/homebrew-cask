cask "gram" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.1.0"
  sha256 arm:   "96d8d3295784ca23727e1aabab731552462abb63a280852c2400be83b20aa80b",
         intel: "1fa30202830264a99c5ae650b802e41c49b1a610b4e955594f6d7fc9f15dc75d"

  url "https://codeberg.org/GramEditor/gram/releases/download/#{version}/Gram-#{arch}-#{version}.dmg",
      verified: "codeberg.org/GramEditor/"
  name "Gram"
  desc "Code editor focused on stability, without AI, subscriptions, or telemetry"
  homepage "https://gram.liten.app/"

  depends_on macos: ">= :catalina"

  app "Gram.app"
  binary "#{appdir}/Gram.app/Contents/MacOS/cli", target: "gram"

  zap trash: [
    "~/Library/Application Support/Gram",
    "~/Library/Caches/Gram",
    "~/Library/Logs/Gram",
    "~/Library/Preferences/se.ziran.Gram.plist",
  ]
end
