cask "jandi" do
  arch arm: "-arm64"

  version "1.7.7"
  sha256 :no_check

  url "https://cdn.jandi.com/jandi-pc/download/JANDI#{arch}.dmg"
  name "JANDI"
  desc "Desktop app for the JANDI collaboration platform"
  homepage "https://www.jandi.com/landing/"

  livecheck do
    url "https://www.jandi.io/version/useragent/desktop"
    regex(%r{Jandi/v?(\d+(?:\.\d+)+)}i)
    strategy :json do |json, regex|
      match = json["response"]&.match(regex)
      next if match.blank?

      match[1]
    end
  end

  app "JANDI.app"

  uninstall quit: "com.jandi.osx.JANDI"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.jandi.osx.jandi.sfl*",
    "~/Library/Application Support/com.jandi.osx.JANDI.ShipIt",
    "~/Library/Application Support/JANDI",
    "~/Library/Caches/com.jandi.osx.JANDI",
    "~/Library/Logs/JANDI",
    "~/Library/Preferences/com.jandi.osx.JANDI.plist",
    "~/Library/Saved Application State/com.jandi.osx.JANDI.savedState",
  ]
end
