cask "openrct2" do
  # NOTE: "2" is not a version number, but an intrinsic part of the product name
  os macos: "macos-universal.zip", linux: "linux-x86_64.AppImage"

  version "0.5.5"
  sha256 arm:          "d02f0a3054106e60186805268828cc80068485ffa324aca7363ae1d69081fb0d",
         intel:        "d02f0a3054106e60186805268828cc80068485ffa324aca7363ae1d69081fb0d",
         x86_64_linux: "f3debb61bd9b6cc4c85e4ca4f17c46f76834a1e89f1faac2b694e0a563d9ad7c"

  on_macos do
    disable! date: "2026-09-01", because: :fails_gatekeeper_check

    app "OpenRCT2.app"

    zap trash: [
      "~/Library/Application Support/CrashReporter/OpenRCT2*",
      "~/Library/Application Support/OpenRCT2",
      "~/Library/Preferences/io.openrct2.OpenRCT2.plist",
      "~/Library/Preferences/website.openrct2.OpenRCT2.plist",
      "~/Library/Saved Application State/io.openrct2.OpenRCT2.savedState",
    ]
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "OpenRCT2-v#{version}-linux-x86_64.AppImage", target: "OpenRCT2.AppImage"

    zap trash: "~/.config/OpenRCT2"
  end

  url "https://github.com/OpenRCT2/OpenRCT2/releases/download/v#{version}/OpenRCT2-v#{version}-#{os}"
  name "OpenRCT2"
  desc "Open-source re-implementation of RollerCoaster Tycoon 2"
  homepage "https://openrct2.io/"
end
