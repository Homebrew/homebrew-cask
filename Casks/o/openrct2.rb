cask "openrct2" do
  # NOTE: "2" is not a version number, but an intrinsic part of the product name

  version "0.4.31"
  sha256 "c7f7b42fe16e9b1a1ea39df32feea6ca11b16986ca997f5dbe3e87bca2afc171"

  url "https://github.com/OpenRCT2/OpenRCT2/releases/download/v#{version}/OpenRCT2-v#{version}-macos-universal.zip",
      verified: "github.com/OpenRCT2/OpenRCT2/"
  name "OpenRCT2"
  desc "Open-source re-implementation of RollerCoaster Tycoon 2"
  homepage "https://openrct2.io/"

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
