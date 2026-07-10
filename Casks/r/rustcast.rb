cask "rustcast" do
  version "0.8.2"
  sha256 "cf34e27dca36db28d6839c813d21518e5a92f8a18c47082e8a18d2ff0eff04bf"

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
