cask "realforce" do
  version "4.0.1"
  sha256 "7b70a72aeca92ea430ec76f164b9b78ea438c02864b11ec7361670326a64a5ba"

  url "https://www.realforce.co.jp/support/download/software/mac/files/REALFORCE%20CONNECT%20Software_#{version.dots_to_hyphens}.pkg"
  name "REALFORCE for Mac"
  desc "Software for Realforce keyboards and mice"
  homepage "https://www.realforce.co.jp/"

  # The upstream website uses Cloudflare protections and the pkg file is
  # inaccessible outside of a browser, so this cask is effectively unusable.
  disable! date: "2026-05-28", because: :unreachable

  depends_on :macos

  pkg "REALFORCE CONNECT Software_#{version.dots_to_hyphens}.pkg"

  uninstall pkgutil: "com.topre.installpkg.realforce"

  zap trash: [
    "~/Library/Preferences/com.topre.RFRApplication.plist",
    "~/Library/Preferences/com.topre.RFSoftwareR3.plist",
    "~/Library/Saved Application State/com.topre.RFRApplication.savedState",
    "~/Library/Saved Application State/com.topre.RFSoftwareR3.savedState",
  ], rmdir: "~/Documents/Topre"
end
