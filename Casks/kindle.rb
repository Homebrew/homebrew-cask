cask "kindle" do
  version "1.37.65278"
  sha256 "1e611c27dae14ef6b07f6126e82d2bb5d9a6c38e983ed8ade9cc5a4753f9a832"

  url "https://kindleformac.s3.amazonaws.com/#{version.patch}/KindleForMac-#{version}.dmg",
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
