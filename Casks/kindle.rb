cask "kindle" do
  version "1.40.65626"
  sha256 "43670222cbb57ca2b8bbc9912d845b3832bcbf51bcd204158b35dd16a407aaa6"

  url "https://kindleformac.s3.amazonaws.com/#{version.patch}/KindleForMac-installer-#{version}.dmg",
      verified: "kindleformac.s3.amazonaws.com/"
  name "Kindle for Mac"
  desc "Interface for reading and syncing eBooks"
  homepage "https://www.amazon.com/gp/digital/fiona/kcp-landing-page"

  livecheck do
    url "https://www.amazon.com/kindlemacdownload/ref=klp_hz_mac"
    strategy :header_match
  end

  auto_updates true

  app "Kindle.app"

  uninstall delete: "/Library/Logs/DiagnosticReports/Kindle_*.diag"

  zap trash: [
    "~/Library/Application Support/Kindle",
    "~/Library/Caches/com.amazon.Kindle",
    "~/Library/Caches/com.amazon.Kindle-Crash-Reporter",
    "~/Library/HTTPStorages/com.amazon.Kindle.binarycookies",
    "~/Library/Preferences/com.amazon.Kindle.plist",
    "~/Library/Saved Application State/com.amazon.Kindle.savedState",
  ]
end
