cask "openrct2" do
  # NOTE: "2" is not a version number, but an intrinsic part of the product name

  version "0.5.3"
  sha256 "dc597f5cc6115a7e5eff61c09a77a5edeb4686a69f72230dda4257c5c4f6f395"

  url "https://github.com/OpenRCT2/OpenRCT2/releases/download/v#{version}/OpenRCT2-v#{version}-macos-universal.zip",
      verified: "github.com/OpenRCT2/OpenRCT2/"
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
