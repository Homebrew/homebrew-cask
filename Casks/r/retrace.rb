cask "retrace" do
  version "0.9.3"
  sha256 "8a38d8e00c8381ca5bce21a41ac3499beb7f254ae0b53e6c509350f6a7949845"

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
