cask "iina" do
  version "1.3.0"
  sha256 "78959388f2a3f027c0187aa6702cba2d1019919ebca1f5bfba417f9b1d6528f8"

  url "https://github.com/iina/iina/releases/download/v#{version}/IINA.v#{version}.dmg"
  name "IINA"
  desc "Free and open-source media player"
  homepage "https://github.com/iina/iina"

  livecheck do
    url "https://github.com/iina/iina/releases/latest"
    strategy :page_match do |page|
      match = page.match(/(\d+(?:\.\d+)+)/i)
      next if match.blank?

      (match[1]).to_s
    end
  end

  auto_updates true
  depends_on macos: ">= :el_capitan"

  app "IINA.app"
  binary "#{appdir}/IINA.app/Contents/MacOS/iina-cli", target: "iina"

  zap trash: [
    "~/Library/Application Scripts/com.colliderli.iina.OpenInIINA",
    "~/Library/Application Support/com.colliderli.iina",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.colliderli.iina.sfl*",
    "~/Library/Application Support/CrashReporter/IINA*.plist",
    "~/Library/Caches/com.colliderli.iina",
    "~/Library/Containers/com.colliderli.iina.OpenInIINA",
    "~/Library/Cookies/com.colliderli.iina.binarycookies",
    "~/Library/Logs/com.colliderli.iina",
    "~/Library/Logs/DiagnosticReports/IINA*.crash",
    "~/Library/Preferences/com.colliderli.iina.plist",
    "~/Library/Safari/Extensions/Open in IINA*.safariextz",
    "~/Library/Saved Application State/com.colliderli.iina.savedState",
  ]
end
