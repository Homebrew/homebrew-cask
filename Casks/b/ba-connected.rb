cask "ba-connected" do
  version "1.49.0"
  sha256 "39ce4485d1f484b7b4dfbd72021cc4c6b69b3b2d14610356e88f58c6f1ee1d65"

  url "https://downloads.bsn.cloud/BA%20connected-#{version}.dmg",
      verified: "downloads.bsn.cloud/"
  name "BrightAuthor:connected"
  desc "Configurator and manager for BrightSign devices"
  homepage "https://www.brightsign.biz/resources/software-downloads/"

  livecheck do
    url "https://downloads.bsn.cloud/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: ">= :catalina"

  app "BA connected.app"

  zap trash: [
    "/Library/Logs/DiagnosticReports/BA connected *.diag",
    "~/Library/Application Support/BA connected",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.brightsign.brightauthor.sfl*",
    "~/Library/Logs/BA connected",
    "~/Library/Preferences/com.brightsign.BrightAuthor.plist",
    "~/Library/Saved Application State/com.brightsign.BrightAuthor.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
