cask "shade" do
  arch arm: "-arm64"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "x64"

  version "2.3.18"
  sha256 arm:   "92777a9172bad9b619d7f0ef3fd0e7cad6a8c8658e265f9268362b38b1fa9a8f",
         intel: "4438f826a8b4ffb101528c3005ca78f9b928119d651686e80977897846178e1d"

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
