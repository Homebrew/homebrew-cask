cask "busytok" do
  version "0.0.2"
  sha256 "633ee61b1b66e97cfe65b250bc3ed2587cb117db25da12da3ca1f6f985f0ddda"

  url "https://github.com/BalianWang/busytok/releases/download/v#{version}/Busytok_#{version}.dmg"
  name "Busytok"
  desc "Local-first AI agent token usage audit dashboard"
  homepage "https://github.com/BalianWang/busytok"

  auto_updates true
  depends_on macos: :sonoma

  app "Busytok.app"

  uninstall launchctl: "com.busytok.service",
            quit:      "com.busytok.gui"

  zap trash: [
    "~/Library/Application Support/busytok/",
    "~/Library/LaunchAgents/com.busytok.service.plist",
  ]
end
