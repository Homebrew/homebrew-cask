cask "paw" do
  version "3.2"
  sha256 "d2ecc62da75260de539bc6ae3c14ebebfbc5e194ea2f385f6f48372d5eead4b1"

  url "https://cdn-builds.paw.cloud/paw/Paw-#{version}.zip"
  appcast "https://paw.cloud/api/v2/updates/appcast"
  name "Paw"
  desc "HTTP client that helps testing and describing APIs"
  homepage "https://paw.cloud/"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Paw.app"

  zap trash: [
    "~/Library/Application Scripts/com.luckymarmot.Paw",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.luckymarmot.paw.sfl*",
    "~/Library/Containers/com.luckymarmot.Paw",
    "~/Library/Preferences/com.luckymarmot.Paw.plist",
    "~/Library/Saved Application State/com.luckymarmot.Paw.savedState",
  ]
end
