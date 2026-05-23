cask "gram" do
  arch arm: "aarch64", intel: "x86_64"

  version "2.1.2"

  on_arm do
    sha256 "f34e67c610cfc17d12ab5c5aea2f474482a802da43ca813ca2f6bdd46ae79ed3"

    url "https://codeberg.org/GramEditor/gram/releases/download/#{version}/Gram-#{arch}-#{version}.dmg",
        verified: "codeberg.org/GramEditor/"
  end
  on_intel do
    sha256 "d6ff2b4a2a2adfbda54a4554d07f0ae1d950d78468473714b310d1fb80642b1c"

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
