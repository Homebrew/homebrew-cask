cask "rustcast" do
  version "0.8.4"
  sha256 "34d0db49f2a925667d594d849973b8a0833943489371f4277490cf94fbfe7af6"

  url "https://github.com/MystikoLab/rustcast/releases/download/v#{version}/Rustcast-universal-macos.app.zip",
    verified: "github.com/MystikoLab/rustcast"
  name "Rustcast"
  desc "Application and utility launcher"
  homepage "https://rustcast.app"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  auto_updates true
  depends_on macos: :ventura

  app "target/release/macos/Rustcast.app"

  zap trash: [
    "~/Library/Application Support/CrashReporter/rustcast_*.plist",
    "~/Library/Logs/DiagnosticReports/rustcast-*.ips",
    "~/Library/Preferences/com.*.rustcast.plist",
    "~/Library/Preferences/rustcast.plist",
    "~/.config/rustcast/config.toml",
    "/tmp/rustcast.log",
  ]
end
