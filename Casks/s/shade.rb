cask "shade" do
  arch arm: "-arm64"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "x64"

  version "2.3.21"
  sha256 arm:   "b1f8b723a92c5adc9111001f1ff818370263d3263b5df39ed080a677198b22d9",
         intel: "fcb5fb0193994004d8474749737aed75be277a4bcce1b395bcc86a5a7df658c0"

  url "https://storage.googleapis.com/v2-public.shade.inc/releases/stable/mac/Shade-#{version}#{arch}.pkg"
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
