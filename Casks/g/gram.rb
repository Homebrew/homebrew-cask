cask "gram" do
  arch arm: "aarch64", intel: "x86_64"

  version "2.0.0"

  on_arm do
    sha256 "249d0ceef917889b66dca8976d1b1efeb0548f52793ece0c2b31a4bdb0982e2e"

    url "https://codeberg.org/GramEditor/gram/releases/download/#{version}/Gram-#{arch}-#{version}.dmg",
        verified: "codeberg.org/GramEditor/"
  end
  on_intel do
    sha256 "f5c9946de08a92a72d3b2ffe567c741ab7bedbae3738f03a2e92e010c05fa532"

    url "https://ziranpub.b-cdn.net/Gram-#{arch}-#{version}.dmg",
        verified: "ziranpub.b-cdn.net"
  end

  name "Gram"
  desc "Code editor focused on stability, without AI, subscriptions, or telemetry"
  homepage "https://gram-editor.com/"

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
