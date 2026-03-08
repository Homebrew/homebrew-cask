cask "ba-connected" do
  version "1.76.0"
  sha256 "0a7bcced7d36c7611e18732d7ff952c70a1caa8363812ba86276c3ec3faa5b73"

  url "https://downloads.bsn.cloud/BA%20connected-#{version}.dmg",
      verified: "downloads.bsn.cloud/"
  name "BrightAuthor:connected"
  desc "Configurator and manager for BrightSign devices"
  homepage "https://www.brightsign.biz/resources/software-downloads/"

  livecheck do
    url "https://brightsign-builds.s3.us-east-1.amazonaws.com/web/bs-download-versions.json"
    regex(/BA(?:[+._-]|%20|\s)connected[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
    strategy :json do |json|
      match = json.dig("general", "bacon", "mac-link")&.match(regex)
      next unless match

      match[1]
    end
  end

  depends_on macos: ">= :big_sur"

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
