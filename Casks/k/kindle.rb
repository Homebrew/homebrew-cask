cask "kindle" do
  version "1.40.65626"
  sha256 "43670222cbb57ca2b8bbc9912d845b3832bcbf51bcd204158b35dd16a407aaa6"

  url "https://kindleformac.s3.amazonaws.com/#{version.patch}/KindleForMac-installer-#{version}.dmg",
      verified: "kindleformac.s3.amazonaws.com/"
  name "Kindle for Mac"
  desc "Interface for reading and syncing eBooks"
  homepage "https://www.amazon.com/gp/digital/fiona/kcp-landing-page"

  deprecate! date: "2023-12-17", because: :discontinued

  auto_updates true
  depends_on macos: ">= :mojave"

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

  caveats do
    requires_rosetta
    <<~EOS
      Please see https://www.amazon.com/kindle-dbs/arp/B0C9PRPV28 for information regarding application end of life.
    EOS
  end
end
