cask "openrct2" do
  # NOTE: "2" is not a version number, but an intrinsic part of the product name
  os macos: "macos-universal.zip", linux: "linux-x86_64.AppImage"

  version "0.5.6"
  sha256 arm:          "5f57e48dbe438fd6fd5059954afe521a01365a36c11085b190067ea3204b6565",
         intel:        "5f57e48dbe438fd6fd5059954afe521a01365a36c11085b190067ea3204b6565",
         x86_64_linux: "8198b5ef8b9b07685fc860f3f04ce88a5f07ce6c1e5a9e2badffa811ed0f2eba"

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
