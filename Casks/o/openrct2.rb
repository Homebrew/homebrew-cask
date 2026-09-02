cask "openrct2" do
  # NOTE: "2" is not a version number, but an intrinsic part of the product name

  version "0.5.4"
  sha256 "f52fec44e34d3d0094b94f1ff1d5d90f220f9a8ce32c99b2723fb513d2fe1e14"

  url "https://github.com/OpenRCT2/OpenRCT2/releases/download/v#{version}/OpenRCT2-v#{version}-macos-universal.zip"
  name "OpenRCT2"
  desc "Open-source re-implementation of RollerCoaster Tycoon 2"
  homepage "https://openrct2.io/"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on :macos

  app "OpenRCT2.app"

  zap trash: [
    "~/Library/Application Support/CrashReporter/OpenRCT2*",
    "~/Library/Application Support/OpenRCT2",
    "~/Library/Preferences/io.openrct2.OpenRCT2.plist",
    "~/Library/Preferences/website.openrct2.OpenRCT2.plist",
    "~/Library/Saved Application State/io.openrct2.OpenRCT2.savedState",
  ]
end
