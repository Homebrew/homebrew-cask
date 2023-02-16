cask "115browser" do
  version "25.0.6.5"
  sha256 "3b8a337d19ac1eeba2068fdb3892aa30c5f0d75bbcd3bcf05411596089822878"

  url "https://down.115.com/client/mac/115br_#{version}.dmg"
  name "115Browser"
  name "115浏览器"
  desc "Web browser"
  homepage "https://pc.115.com/browser.html"

  livecheck do
    url "https://appversion.115.com/1/web/1.0/api/chrome?callback=get_version"
    regex(/115br_(\d+(\.\d+)+).dmg/i)
  end

  depends_on macos: ">= :sierra"

  app "115Browser.app"

  zap trash: [
    "~/Library/Application Support/115Browser",
    "~/Library/Caches/115Browser",
    "~/Library/Caches/org.115Browser.115Browser",
    "~/Library/Preferences/org.115Browser.115Browser.plist",
    "~/Library/Saved Application State/org.115Browser.115Browser.savedState",
  ]
end
