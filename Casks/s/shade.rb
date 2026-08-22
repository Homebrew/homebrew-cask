cask "shade" do
  arch arm: "-arm64"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "x64"

  version "2.3.19"
  sha256 arm:   "745bbdad49a375eade2062bd81b29c5d2f81808badd84d630d1fe35c80277bbc",
         intel: "92f6e3cf49a625b1111af9a58e4cf2915c73be613cf8e71a1cb89ab342ce891b"

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
