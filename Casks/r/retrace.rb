cask "retrace" do
  version "0.9.4"
  sha256 "7a6bd6aa74a26dcd5d553857161f87cba5ba95b6ede4de5deb1595c7f8b6ca6f"

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
