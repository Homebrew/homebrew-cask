cask "retrace" do
  version "0.9.2"
  sha256 "c3e0b4335611030b0912e2884dfcab52db1bdd5d8c411945035ca987cdcac7f0"

  url "https://cdn.retrace.to/Retrace-v#{version}.dmg"
  name "Retrace"
  desc "Local-first screen recording and search application"
  homepage "https://retrace.to/"

  livecheck do
    url "https://retrace.to/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Retrace.app"

  uninstall launchctl: "io.retrace.app.crash-recovery",
            quit:      "io.retrace.app"

  zap trash: [
    "~/Library/Application Support/Retrace",
    "~/Library/Caches/io.retrace.app",
    "~/Library/HTTPStorages/io.retrace.app",
    "~/Library/Logs/Retrace",
    "~/Library/Preferences/io.retrace.app.plist",
    "~/Library/Saved Application State/io.retrace.app.savedState",
  ]
end
