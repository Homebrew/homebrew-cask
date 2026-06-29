cask "gram" do
  arch arm: "aarch64", intel: "x86_64"

  version "3.0.0"

  on_arm do
    sha256 "56bd624ebb166b4d157a2af0292b04975649477e446a0984f0d16473ca77dfad"

    url "https://codeberg.org/GramEditor/gram/releases/download/#{version}/Gram-#{arch}-#{version}.dmg",
        verified: "codeberg.org/GramEditor/"
  end
  on_intel do
    sha256 "ac10a6f01f8ef245810fd894a0b24ced04911f6fd055b70a40aae6bd43a187af"

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
