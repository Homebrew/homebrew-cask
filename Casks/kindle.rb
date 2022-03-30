cask "kindle" do
  version "1.35.64250"
  sha256 "ea8f6fe22fcc754f1ed508b3ecfc4ddc1ca33d311e1af60302f03327ec2f8254"

  url "https://kindleformac.s3.amazonaws.com/#{version.patch}/KindleForMac-#{version}.dmg",
      verified: "kindleformac.s3.amazonaws.com/"
  name "Kindle for Mac"
  desc "Interface for reading and syncing eBooks"
  homepage "https://www.amazon.com/gp/digital/fiona/kcp-landing-page"

  livecheck do
    url "https://www.amazon.com/kindlemacdownload/ref=klp_hz_mac"
    strategy :header_match
  end

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
