cask "gram" do
  arch arm: "aarch64", intel: "x86_64"

  version "3.0.1"

  on_arm do
    sha256 "26eae1ca77c5300f4afe5e76bf909b1420d82e515a18b7fa3904655b599833a3"

    url "https://codeberg.org/GramEditor/gram/releases/download/#{version}/Gram-#{arch}-#{version}.dmg",
        verified: "codeberg.org/GramEditor/"
  end
  on_intel do
    sha256 "d50c92bcdd37f656d2e8c40b3cc6e34b98f0eff58f7366a18599d18cf411bbdb"

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
