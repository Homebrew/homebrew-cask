cask "shade" do
  arch arm: "-arm64"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "x64"

  version "2.3.17"
  sha256 arm:   "c35395816bae222501eb318366e5f697ff33a5fb1076e1906b1bed1f1c028780",
         intel: "ad1dca1206a2746e1ba7202e3c5eae5a0b73f036c650b16493acefaa29c2a56f"

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
