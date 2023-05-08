cask "desmume" do
  version "0.9.13"
  sha256 "d42e4bbf8f96b6bfdb3c8be6cf469b606a3b105352460636b1051b8dd0365ebc"

  url "https://github.com/TASEmulators/desmume/releases/download/release_#{version.tr(".", "_")}/desmume-#{version}-macOS.dmg",
      verified: "github.com/TASEmulators/desmume/"
  name "DeSmuME"
  desc "Nintendo DS emulator"
  homepage "https://desmume.org/"

  livecheck do
    url :url
    regex(/^(?:release[._-])?(\d+(?:[._-]\d+)+[a-z]?)$/i)
    strategy :github_latest do |json, regex|
      json["tag_name"]&.scan(regex)&.map { |match| match[0].tr("_", ".") }
    end
  end

  app "DeSmuME.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.desmume.desmume.sfl*",
    "~/Library/Application Support/DeSmuME",
    "~/Library/Preferences/org.desmume.DeSmuME.plist",
    "~/Library/Saved Application State/org.desmume.DeSmuME.savedState",
  ]
end
