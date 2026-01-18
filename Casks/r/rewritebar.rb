cask "rewritebar" do
  version "2.23.1"
  sha256 "f0510be660a76c3daf82741b3556b0cc3aac67832bd1bc583780012bb91bf5e7"

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
