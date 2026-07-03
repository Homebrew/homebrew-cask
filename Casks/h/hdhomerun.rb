cask "hdhomerun" do
  version "20260326"
  sha256 "f25feb76e283ebb0058b9a8af0e11b3f516cbb7e2111cca01b701f812748d6f6"

  url "https://download.silicondust.com/hdhomerun/hdhomerun_mac_#{version}.dmg"
  name "HDHomeRun"
  desc "Client for HDHomeRun streamer"
  homepage "https://www.silicondust.com/support/downloads/"

  # The installer can only be ran manually, and the majority of the process
  # is deferring to the Mac App Store version. This is no longer a suitable
  # user experience for `homebrew-cask`.
  # Ref: https://github.com/Homebrew/homebrew-cask/pull/272281
  disable! date: "2027-07-03", because: :no_longer_meets_criteria

  depends_on :macos

  pkg "HDHomeRun Installer.pkg"

  uninstall pkgutil: "com.silicondust.*hdhomerun"

  zap trash: [
    "~/Library/Caches/com.silicondust.hdhomerun",
    "~/Library/Saved Application State/com.silicondust.hdhomerun.savedState",
    "~/Library/WebKit/com.silicondust.hdhomerun",
  ]
end
