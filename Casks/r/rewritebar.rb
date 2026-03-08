cask "rewritebar" do
  version "2.26.0"
  sha256 "cbac20b2a0ea675e4ad5af91bf70005b31366aefbefbbe5dec92737a6e6a4375"

  url "https://rewritebar.com/download/v#{version}.zip"
  name "RewriteBar"
  desc "AI-powered writing assistant"
  homepage "https://rewritebar.com/"

  livecheck do
    url "https://rewritebar.com/app/appcast.xml"
    strategy :sparkle do |items|
      items.find { |item| item.channel.nil? }&.short_version
    end
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "RewriteBar.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.m91michel.rewritebar.*",
    "~/Library/Application Support/RewriteBar",
    "~/Library/Caches/RewriteBar",
    "~/Library/HTTPStorages/RewriteBar",
    "~/Library/Preferences/com.m91michel.rewritebar.plist",
    "~/Library/Saved Application State/com.m91michel.rewritebar.savedState",
    "~/Library/WebKit/RewriteBar",
  ]
end
