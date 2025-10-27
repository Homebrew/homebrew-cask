cask "transmit" do
  version "5.11.1"
  sha256 "d6f34b9aca7cda1c5913b12b9e30d1d65b7362a5e5588c3558d980a4b0c4fdaa"

  url "https://download-cdn.panic.com/transmit/Transmit%20#{version}.zip",
      user_agent: :browser
  name "Transmit"
  desc "File transfer application"
  homepage "https://panic.com/transmit/"

  livecheck do
    url "https://www.panic.com/updates/update.php?appName=Transmit%20#{version.major}&appVersion=#{version.major}"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Transmit.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.panic.transmit.sfl*",
    "~/Library/Application Support/com.panic.Transmit",
    "~/Library/Application Support/Transmit",
    "~/Library/Caches/com.panic.Transmit",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.panic.Transmit",
    "~/Library/Caches/Transmit",
    "~/Library/HTTPStorages/com.panic.Transmit",
    "~/Library/Preferences/com.panic.Transmit.plist",
    "~/Library/Saved Application State/com.panic.Transmit.savedState",
    "~/Library/WebKit/com.panic.Transmit",
  ]
end
