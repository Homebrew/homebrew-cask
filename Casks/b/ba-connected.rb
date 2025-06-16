cask "ba-connected" do
  version "1.63.2"
  sha256 "fc0b5acf0b20e34c98168c0dc1a6b993e6c584796687432af3787e54f4c6431a"

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
