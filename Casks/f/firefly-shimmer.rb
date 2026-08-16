cask "firefly-shimmer" do
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "2.2.2"

  on_macos do
    sha256 "123a710a8e42a717c29df2f96b722e2507b2ee5593aa699893aee4947dedbb06"

    app "Firefly Shimmer.app"

    uninstall quit: "org.iota.firefly"

    zap trash: [
      "~/Library/Application Support/Firefly",
      "~/Library/Logs/Firefly",
      "~/Library/Preferences/org.iota.firefly.helper.plist",
      "~/Library/Preferences/org.iota.firefly.plist",
      "~/Library/Saved Application State/org.iota.firefly.savedState",
    ]
  end
  on_linux do
    sha256 "80fdd10d6d9be30bb992906b23c1e637fd61bb7426e1aa8af8207457dfb47779"

    depends_on arch: :x86_64

    app_image "firefly-shimmer-desktop-#{version}.AppImage", target: "Firefly Shimmer.AppImage"
  end

  url "https://github.com/iotaledger/firefly/releases/download/desktop-shimmer-#{version}/firefly-shimmer-desktop-#{version}.#{url_end}",
      verified: "github.com/iotaledger/firefly/"
  name "Firefly Shimmer"
  desc "Official wallet for IOTA"
  homepage "https://firefly.iota.org/"

  livecheck do
    url "https://dl.firefly.iota.org/shimmer-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  caveats do
    requires_rosetta
  end
end
