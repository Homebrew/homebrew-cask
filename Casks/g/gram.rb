cask "gram" do
  arch arm: "aarch64", intel: "x86_64"

  version "2.2.0"

  on_arm do
    sha256 "e61c17a0cd5631b8ec63698a3cb406ba333240ad12d4e1221f8fbc5d97d06507"

    url "https://codeberg.org/GramEditor/gram/releases/download/#{version}/Gram-#{arch}-#{version}.dmg",
        verified: "codeberg.org/GramEditor/"
  end
  on_intel do
    sha256 "3513309c61bcc6869490201a06135b9cc74255dff4efa677448e0d94260a8d7b"

    url "https://ziranpub.b-cdn.net/Gram-#{arch}-#{version}.dmg",
        verified: "ziranpub.b-cdn.net"
  end

  name "Gram"
  desc "Code editor focused on stability, without AI, subscriptions, or telemetry"
  homepage "https://gram-editor.com/"

  livecheck do
    url "https://codeberg.org/GramEditor/gram.git"
    strategy :git
  end

  depends_on macos: :catalina

  app "Gram.app"
  binary "#{appdir}/Gram.app/Contents/MacOS/cli", target: "gram"

  zap trash: [
    "~/Library/Application Support/Gram",
    "~/Library/Caches/Gram",
    "~/Library/Logs/Gram",
    "~/Library/Preferences/se.ziran.Gram.plist",
  ]
end
