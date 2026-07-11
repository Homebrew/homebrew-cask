cask "rustcast" do
  version "0.8.3"
  sha256 "fc131483af0af9d1cd80909f96da762f998122a6e961070999a3b7e43e238edc"

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
