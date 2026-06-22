cask "rustcast" do
  version "0.8.0"
  sha256 "8ee23d8e1055d0919f05025c79a43e8e40ed7de9c71427e3a5258e33f9a6b1d4"

  url "https://github.com/RustCastLabs/rustcast/releases/download/v#{version}/Rustcast-universal-macos.app.zip",
      verified: "github.com/RustCastLabs/rustcast/releases/download/"
  name "Rustcast"
  desc "Application and utility launcher"
  homepage "https://rustcast.app/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  auto_updates true
  depends_on macos: :big_sur

  app "target/release/macos/Rustcast.app"

  zap trash: [
    "/tmp/rustcast.log",
    "~/.config/rustcast/config.toml",
    "~/Library/Application Support/CrashReporter/rustcast_*.plist",
    "~/Library/Logs/DiagnosticReports/rustcast-*.ips",
    "~/Library/Preferences/com.*.rustcast.plist",
    "~/Library/Preferences/rustcast.plist",
  ]
end
