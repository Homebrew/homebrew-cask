cask "kindle" do
  version "1.31.60175"
  sha256 "1d824e42aca1d665384185a04d0b484ff1013f46a573caa39a39c1e0f9457499"

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
