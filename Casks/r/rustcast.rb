cask "rustcast" do
  version "0.8.1"
  sha256 "65d36ff1f8d66cd4e1c070ab7125b3d30e0c7dddf3aecd9159e90c1e7ab172e2"

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
