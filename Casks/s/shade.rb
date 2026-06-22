cask "shade" do
  arch arm: "-arm64"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "x64"

  version "2.3.16"
  sha256 arm:   "a35c41477a4b4fd52e743201446472e240d672d9c60babad7edc222a1609d2f1",
         intel: "e9f3a56788304128c31c6176d7f06ada427170d6f9c52b60d20307113dba6379"

  url "https://storage.googleapis.com/v2-public.shade.inc/releases/stable/mac/Shade-#{version}#{arch}.pkg",
      verified: "storage.googleapis.com/v2-public.shade.inc/"
  name "Shade"
  desc "AI-powered media storage and asset management platform"
  homepage "https://shade.inc/"

  livecheck do
    url "https://storage.googleapis.com/v2-public.shade.inc/releases/stable/mac/fuse-t-latest-#{livecheck_arch}-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

  pkg "Shade-#{version}#{arch}.pkg"

  uninstall launchctl: "inc.shade.xpc",
            pkgutil:   "com.shade.shade",
            delete:    [
              "/Library/Application Support/Shade/ShadeFS XPC Service.xpc",
              "/Library/LaunchAgents/inc.shade.xpc.plist",
            ]

  zap trash: [
    "~/.shade",
    "~/Library/Application Support/Shade",
    "~/Library/Logs/Shade",
    "~/Library/Preferences/com.shade.shade.plist",
    "~/Library/Saved Application State/com.shade.shade.savedState",
  ]
end
